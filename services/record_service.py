from helpers.db_helper import DbHelper
from collections import defaultdict


class RecordService():
    def __init__(self):
        self.db_helper = DbHelper()

    def GetLastHelpRecords(self, page_size=10, page=0, search=None, start_date=None, end_date=None):
        sql_result = self.db_helper.ExecuteQuery(
            "EXEC GetHelpRecords @PageSize = ?, @Page = ?, @Search = ?, @StartDate = ?, @EndDate = ?",
            (page_size, page, search, start_date, end_date),
            is_sp=True)

        return sql_result

    def GetLastHelpRecordCount(self, search=None, start_date=None, end_date=None):
        sql_result = self.db_helper.ExecuteQuery("EXEC GetHelpRecordCount @Search = ?, @StartDate= ?, @EndDate = ?",
                                                 (search, start_date, end_date),
                                                 is_sp=True)

        return sql_result[0]

    def GetAllRecordCountsByProvince(self, recordIds=None):
        sql_result = self.db_helper.ExecuteQuery("EXEC GetHelpRecordCountPerProvince @RecordIds = ?",
                                                 values=(recordIds,),
                                                 is_sp=True)

        province_record_counts_dict = defaultdict(int)

        for district in sql_result:
            province_record_counts_dict[district[0]] = district[1]

        return province_record_counts_dict
