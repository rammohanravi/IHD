namespace IndiaDeals2Day.SharedComponents
{
    public interface IConfigHelper
    {
        bool GetAppSettingsBoolValue(string key, bool? defaultValue = null);
        string GetAppSettingsStringValue(string key);
        int GetAppSettingsIntlValue(string key);
        string GetConnectionStringFromKey(string key);
        string GetConnectionStringDatabaseFromKey(string key);
        string GetEndPointAdress();
        string GetHostName();
        string GetFullPathAppRelative(string appSettingsName);
    }
}
