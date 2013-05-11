.class public Lcom/android/internal/telephony/IccProvider;
.super Landroid/content/ContentProvider;
.source "IccProvider.java"


# static fields
.field private static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final ADN:I = 0x1

.field private static final DBG:Z = false

.field private static final DELETE_RAW_CONTACT_WHERE:Ljava/lang/String; = "sourceid=? AND account_name=\'SIM\' AND account_type=\'com.anddroid.contacts.sim\'"

.field private static final FDN:I = 0x2

.field private static final HTC_SDN:I = 0x6

.field private static final PHONEBOOK_ENTRY:I = 0x4

.field private static final PHONEBOOK_ENTRY_ID:I = 0x5

.field private static final SDN:I = 0x3

.field private static final STR_EMAILS:Ljava/lang/String; = "emails"

.field private static final STR_NUMBER:Ljava/lang/String; = "number"

.field private static final STR_PIN2:Ljava/lang/String; = "pin2"

.field private static final STR_TAG:Ljava/lang/String; = "tag"

.field private static final TAG:Ljava/lang/String; = "IccProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;

.field static VERIZON_WPHONE_CONFIG:Z

.field private static mUrl:I


# instance fields
.field private mAdnError:Lcom/android/internal/telephony/ADNErrorType;

.field private mSimulator:Z

.field mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 207
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xaa

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/IccProvider;->VERIZON_WPHONE_CONFIG:Z

    .line 211
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v0, v1

    const-string v3, "number"

    aput-object v3, v0, v2

    const-string v3, "emails"

    aput-object v3, v0, v4

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 225
    sput v1, Lcom/android/internal/telephony/IccProvider;->mUrl:I

    .line 239
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 243
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v3, "adn"

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 244
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 245
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 247
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "htc_sdn"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 250
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "phonebook"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 251
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "phonebook/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 253
    return-void

    :cond_1
    move v0, v1

    .line 207
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "pin2"

    .prologue
    .line 909
    const/4 v7, 0x0

    .line 917
    .local v7, success:Z
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 919
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 920
    const-string v2, ""

    const-string v3, ""

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 929
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v7

    .line 925
    :catch_0
    move-exception v1

    goto :goto_0

    .line 923
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "pin2"

    .prologue
    .line 962
    const/4 v7, 0x0

    .line 965
    .local v7, success:Z
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 967
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 968
    const-string v4, ""

    const-string v5, ""

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 977
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v7

    .line 973
    :catch_0
    move-exception v1

    goto :goto_0

    .line 971
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static getURL_MATCHER()Landroid/content/UriMatcher;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    return-object v0
.end method

.method private static deleteRawContact(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 10
    .parameter "resolver"
    .parameter "recordNumber"

    .prologue
    .line 1236
    const/4 v7, 0x1

    new-array v2, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v2, v7

    .line 1238
    .local v2, deleteArgs:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 1240
    .local v5, result:I
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 1241
    .local v3, deleteUri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "caller_is_syncadapter"

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 1242
    .local v1, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1244
    const-string v7, "sourceid=? AND account_name=\'SIM\' AND account_type=\'com.anddroid.contacts.sim\'"

    invoke-virtual {p0, v3, v7, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1249
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1250
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1251
    .local v4, recordNumber_id:Ljava/lang/Long;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "recordNumber="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1253
    .local v0, WHERE:Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1254
    .local v6, updateValues:Landroid/content/ContentValues;
    const-string v7, "raw_contact_id"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1255
    const-string v7, "data_id"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1256
    const-string v7, "recordNumber"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1257
    const-string v7, "recordLocation"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1259
    sget-object v7, Landroid/provider/HtcContactsContract$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v6, v0, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1262
    .end local v0           #WHERE:Ljava/lang/String;
    .end local v4           #recordNumber_id:Ljava/lang/Long;
    .end local v6           #updateValues:Landroid/content/ContentValues;
    :cond_0
    return v5
.end method

.method private filterOutInvalidCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "dialString"

    .prologue
    .line 424
    const-string v2, ""

    .line 425
    .local v2, rtn:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 426
    const/4 p1, 0x0

    .line 447
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 429
    .restart local p1
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 430
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 431
    .local v0, c:C
    const/16 v3, 0x2e

    if-ne v0, v3, :cond_3

    .line 429
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 434
    :cond_3
    const/16 v3, 0x2c

    if-eq v0, v3, :cond_2

    .line 437
    const/16 v3, 0x20

    if-eq v0, v3, :cond_2

    .line 441
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 443
    .end local v0           #c:C
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    move-object p1, v2

    .line 447
    goto :goto_0
.end method

.method private getLastError()Lcom/android/internal/telephony/ADNErrorType;
    .locals 3

    .prologue
    .line 1163
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1165
    .local v0, simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 1166
    const-string v1, "SimProvider"

    const-string v2, "getLastError"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    invoke-interface {v0}, Lcom/android/internal/telephony/IIccPhoneBook;->getLastError()Lcom/android/internal/telephony/ADNErrorType;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1174
    .end local v0           #simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :goto_0
    return-object v1

    .line 1171
    :catch_0
    move-exception v1

    .line 1174
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1169
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static insertIntoContact(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "resolver"
    .parameter "name"
    .parameter "number"
    .parameter "hidden"
    .parameter "recordNumber"
    .parameter "number1"
    .parameter "number2"
    .parameter "emails"
    .parameter "rawContactId"

    .prologue
    .line 1213
    new-instance v0, Landroid/accounts/Account;

    const-string v2, "SIM"

    const-string v3, "com.anddroid.contacts.sim"

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    .local v0, account:Landroid/accounts/Account;
    invoke-static/range {p1 .. p8}, Lcom/android/internal/telephony/ImportUtils;->generateSimCursorToUpdate(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1225
    .local v1, simCursor:Landroid/database/Cursor;
    if-lez p9, :cond_1

    .line 1226
    invoke-static {v1, p0, v0, p9}, Lcom/android/internal/telephony/ImportUtils;->insertSimDataIntoContactDb(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;I)I

    .line 1230
    :goto_0
    if-eqz v1, :cond_0

    .line 1231
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1233
    :cond_0
    return-void

    .line 1228
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/android/internal/telephony/ImportUtils;->importSimIntoContactDb(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)I

    goto :goto_0
.end method

.method private loadFromEf(I)Ljava/util/ArrayList;
    .locals 7
    .parameter "efType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 871
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 872
    .local v4, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    const/4 v1, 0x0

    .line 877
    .local v1, adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    :try_start_0
    const-string v5, "simphonebook"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v3

    .line 879
    .local v3, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v3, :cond_0

    .line 880
    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 887
    .end local v3           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 890
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 892
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 893
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {p0, v5, v4}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/AdnRecord;Ljava/util/ArrayList;)V

    .line 892
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 897
    .end local v0           #N:I
    .end local v2           #i:I
    :cond_1
    const-string v5, "IccProvider"

    const-string v6, "Cannot load ADN records"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 901
    :cond_2
    return-object v4

    .line 884
    :catch_0
    move-exception v5

    goto :goto_0

    .line 882
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private loadPBKEntry(Lcom/android/internal/telephony/PhoneBookEntry;Ljava/util/ArrayList;)V
    .locals 10
    .parameter "record"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/PhoneBookEntry;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1131
    .local p2, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBookEntry;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1132
    new-instance v1, Ljava/util/ArrayList;

    const/4 v8, 0x7

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1133
    .local v1, contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    .line 1134
    .local v0, alphaTag:Ljava/lang/String;
    iget-object v4, p1, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    .line 1135
    .local v4, number:Ljava/lang/String;
    iget-object v8, p1, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v5, v8, v9

    .line 1136
    .local v5, number1:Ljava/lang/String;
    iget-object v8, p1, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v6, v8, v9

    .line 1137
    .local v6, number2:Ljava/lang/String;
    iget v8, p1, Lcom/android/internal/telephony/PhoneBookEntry;->hidden:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1138
    .local v3, hidden:Ljava/lang/String;
    iget v8, p1, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 1139
    .local v7, recordNumber:Ljava/lang/String;
    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    .line 1142
    .local v2, email:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1143
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1144
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1145
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1146
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1147
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1148
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1150
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1152
    .end local v0           #alphaTag:Ljava/lang/String;
    .end local v1           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #email:Ljava/lang/String;
    .end local v3           #hidden:Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    .end local v5           #number1:Ljava/lang/String;
    .end local v6           #number2:Ljava/lang/String;
    .end local v7           #recordNumber:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private loadPBKEntryFromRIL()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1095
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1096
    .local v3, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    const/4 v2, 0x0

    .line 1101
    .local v2, phoneBookEntries:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/PhoneBookEntry;>;"
    :try_start_0
    const-string v5, "simphonebook"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v4

    .line 1103
    .local v4, simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v4, :cond_0

    .line 1104
    invoke-interface {v4}, Lcom/android/internal/telephony/IIccPhoneBook;->getPBKEntries()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1112
    .end local v4           #simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 1115
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1117
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1118
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/PhoneBookEntry;

    invoke-direct {p0, v5, v3}, Lcom/android/internal/telephony/IccProvider;->loadPBKEntry(Lcom/android/internal/telephony/PhoneBookEntry;Ljava/util/ArrayList;)V

    .line 1117
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1122
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_1
    const-string v5, "IccProvider"

    const-string v6, "Cannot load phone book Eentries"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1126
    :cond_2
    return-object v3

    .line 1108
    :catch_0
    move-exception v5

    goto :goto_0

    .line 1106
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private loadRecord(Lcom/android/internal/telephony/AdnRecord;Ljava/util/ArrayList;)V
    .locals 13
    .parameter "record"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/AdnRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    const/4 v12, 0x0

    .line 988
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 989
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 990
    .local v2, contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 991
    .local v0, alphaTag:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v8

    .line 992
    .local v8, number:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v5

    .line 995
    .local v5, emails:[Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 996
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 999
    sget v10, Lcom/android/internal/telephony/IccProvider;->mUrl:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_0

    .line 1000
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getRecordNumber()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 1001
    .local v9, recordnumber:Ljava/lang/String;
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1002
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1004
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1008
    .end local v9           #recordnumber:Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1010
    .local v4, emailString:Ljava/lang/StringBuilder;
    if-eqz v5, :cond_3

    .line 1011
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v3, v1, v6

    .line 1013
    .local v3, email:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    const-string v10, ","

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1016
    .end local v3           #email:Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1020
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :goto_1
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1022
    .end local v0           #alphaTag:Ljava/lang/String;
    .end local v2           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #emailString:Ljava/lang/StringBuilder;
    .end local v5           #emails:[Ljava/lang/String;
    .end local v8           #number:Ljava/lang/String;
    :cond_2
    return-void

    .line 1018
    .restart local v0       #alphaTag:Ljava/lang/String;
    .restart local v2       #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #emailString:Ljava/lang/StringBuilder;
    .restart local v5       #emails:[Ljava/lang/String;
    .restart local v8       #number:Ljava/lang/String;
    :cond_3
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1156
    const-string v0, "IccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    return-void
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "inVal"

    .prologue
    const/16 v3, 0x27

    .line 593
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 594
    .local v0, len:I
    move-object v1, p1

    .line 596
    .local v1, retVal:Ljava/lang/String;
	const/4 v2, 0x1

	if-gt v0, v2, :cond_ff

	return-object v1

	:cond_ff
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 597
    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 600
    :cond_0
    return-object v1
.end method

.method private udateSpeedDialList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 13
    .parameter "recordNumber"
    .parameter "number"
    .parameter "number1"
    .parameter "number2"
    .parameter "resolver"

    .prologue
    .line 809
    :try_start_0
    sget-object v1, Landroid/provider/HtcContactsContract$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "updatelist"

    invoke-static {v1, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 812
    .local v2, CONTENT_URI_UPDATELIST:Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recordNumber="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 815
    .local v4, selection:Ljava/lang/String;
    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v1

    const/4 v1, 0x1

    const-string v5, "number"

    aput-object v5, v3, v1

    const/4 v1, 0x2

    const-string v5, "recordNumber"

    aput-object v5, v3, v1

    const/4 v1, 0x3

    const-string v5, "recordLocation"

    aput-object v5, v3, v1

    .line 820
    .local v3, PROJECTION_MAP:[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p5

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 823
    .local v8, cur_updateList:Landroid/database/Cursor;
    if-eqz v8, :cond_5

    .line 824
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 826
    :cond_0
    const/4 v11, 0x0

    .line 827
    .local v11, updateLocation:I
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 828
    .local v10, speeddial:Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 829
    invoke-virtual {p2, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 830
    const/4 v11, 0x1

    .line 833
    :cond_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 834
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 835
    const/4 v11, 0x2

    .line 838
    :cond_2
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 839
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 840
    const/4 v11, 0x3

    .line 844
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 846
    .local v7, WHERE:Ljava/lang/String;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 848
    .local v12, updateValues:Landroid/content/ContentValues;
    if-nez v11, :cond_6

    .line 849
    const-string v1, "raw_contact_id"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 850
    const-string v1, "data_id"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 851
    const-string v1, "recordNumber"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 852
    const-string v1, "recordLocation"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 857
    :goto_0
    sget-object v1, Landroid/provider/HtcContactsContract$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v1, v12, v7, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 860
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 862
    .end local v7           #WHERE:Ljava/lang/String;
    .end local v10           #speeddial:Ljava/lang/String;
    .end local v11           #updateLocation:I
    .end local v12           #updateValues:Landroid/content/ContentValues;
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 867
    .end local v2           #CONTENT_URI_UPDATELIST:Landroid/net/Uri;
    .end local v3           #PROJECTION_MAP:[Ljava/lang/String;
    .end local v4           #selection:Ljava/lang/String;
    .end local v8           #cur_updateList:Landroid/database/Cursor;
    :cond_5
    :goto_1
    return-void

    .line 855
    .restart local v2       #CONTENT_URI_UPDATELIST:Landroid/net/Uri;
    .restart local v3       #PROJECTION_MAP:[Ljava/lang/String;
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v7       #WHERE:Ljava/lang/String;
    .restart local v8       #cur_updateList:Landroid/database/Cursor;
    .restart local v10       #speeddial:Ljava/lang/String;
    .restart local v11       #updateLocation:I
    .restart local v12       #updateValues:Landroid/content/ContentValues;
    :cond_6
    const-string v1, "recordLocation"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 864
    .end local v2           #CONTENT_URI_UPDATELIST:Landroid/net/Uri;
    .end local v3           #PROJECTION_MAP:[Ljava/lang/String;
    .end local v4           #selection:Ljava/lang/String;
    .end local v7           #WHERE:Ljava/lang/String;
    .end local v8           #cur_updateList:Landroid/database/Cursor;
    .end local v10           #speeddial:Ljava/lang/String;
    .end local v11           #updateLocation:I
    .end local v12           #updateValues:Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .line 865
    .local v9, e:Ljava/lang/Exception;
    const-string v1, "IccProvider"

    const-string v5, "update Speed dial list Failed:"

    invoke-static {v1, v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "efType"
    .parameter "oldName"
    .parameter "oldNumber"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "pin2"

    .prologue
    .line 938
    const/4 v7, 0x0

    .line 941
    .local v7, success:Z
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 943
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 944
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 953
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v7

    .line 949
    :catch_0
    move-exception v1

    goto :goto_0

    .line 947
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static updateIntoContact(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "resolver"
    .parameter "name"
    .parameter "number"
    .parameter "hidden"
    .parameter "recordNumber"
    .parameter "number1"
    .parameter "number2"
    .parameter "emails"

    .prologue
    .line 1186
    new-instance v0, Landroid/accounts/Account;

    const-string v2, "SIM"

    const-string v3, "com.anddroid.contacts.sim"

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    .local v0, account:Landroid/accounts/Account;
    invoke-static/range {p1 .. p8}, Lcom/android/internal/telephony/ImportUtils;->generateSimCursorToUpdate(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1198
    .local v1, simCursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 1199
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1201
    :cond_0
    return-void
.end method


# virtual methods
.method addSimPbkEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;
    .locals 7
    .parameter "name"
    .parameter "number"
    .parameter "number1"
    .parameter "number2"
    .parameter "email"

    .prologue
    .line 1026
    const/4 v6, 0x0

    .line 1031
    .local v6, error:Lcom/android/internal/telephony/ADNErrorType;
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1034
    .local v0, simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1035
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/IIccPhoneBook;->addSimPbkEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1046
    .end local v0           #simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return-object v6

    .line 1043
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1040
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 20
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/16 v18, 0x5

    move/from16 v0, v18

    if-eq v2, v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v2

    if-nez v2, :cond_0

    .line 613
    const-string v2, "IccProvider"

    const-string v18, "SIM state is not ready. Can not access SIM phonebook."

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const/4 v2, 0x0

    .line 698
    :goto_0
    return v2

    .line 619
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    .line 622
    .local v10, match:I
    const/4 v2, 0x5

    if-ne v10, v2, :cond_3

    .line 623
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v14

    .line 625
    .local v14, recordNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/IccProvider;->deleteSimPbkEntry(Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;

    move-result-object v8

    .line 626
    .local v8, error:Lcom/android/internal/telephony/ADNErrorType;
    if-eqz v8, :cond_1

    iget-boolean v2, v8, Lcom/android/internal/telephony/ADNErrorType;->success:Z

    if-eqz v2, :cond_2

    .line 629
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v14}, Lcom/android/internal/telephony/IccProvider;->deleteRawContact(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 632
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 635
    .end local v8           #error:Lcom/android/internal/telephony/ADNErrorType;
    .end local v14           #recordNumber:Ljava/lang/String;
    :cond_3
    packed-switch v10, :pswitch_data_0

    .line 645
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Cannot insert into URL: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 637
    :pswitch_0
    const/16 v3, 0x6f3a

    .line 651
    .local v3, efType:I
    :goto_1
    const/4 v4, 0x0

    .line 652
    .local v4, tag:Ljava/lang/String;
    const/4 v5, 0x0

    .line 653
    .local v5, number:Ljava/lang/String;
    const/4 v6, 0x0

    .line 654
    .local v6, emails:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 656
    .local v7, pin2:Ljava/lang/String;
    const-string v2, "AND"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 657
    .local v16, tokens:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v11, v0

    .line 659
    .local v11, n:I
    :cond_4
    :goto_2
    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_9

    .line 660
    aget-object v13, v16, v11

    .line 663
    .local v13, param:Ljava/lang/String;
    const-string v2, "="

    invoke-virtual {v13, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 665
    .local v12, pair:[Ljava/lang/String;
    array-length v2, v12

    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v2, v0, :cond_5

    .line 666
    const-string v2, "IccProvider"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "resolve: bad whereClause parameter: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 641
    .end local v3           #efType:I
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #emails:[Ljava/lang/String;
    .end local v7           #pin2:Ljava/lang/String;
    .end local v11           #n:I
    .end local v12           #pair:[Ljava/lang/String;
    .end local v13           #param:Ljava/lang/String;
    .end local v16           #tokens:[Ljava/lang/String;
    :pswitch_1
    const/16 v3, 0x6f3b

    .line 642
    .restart local v3       #efType:I
    goto :goto_1

    .line 670
    .restart local v4       #tag:Ljava/lang/String;
    .restart local v5       #number:Ljava/lang/String;
    .restart local v6       #emails:[Ljava/lang/String;
    .restart local v7       #pin2:Ljava/lang/String;
    .restart local v11       #n:I
    .restart local v12       #pair:[Ljava/lang/String;
    .restart local v13       #param:Ljava/lang/String;
    .restart local v16       #tokens:[Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    aget-object v2, v12, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 671
    .local v9, key:Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v12, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 673
    .local v17, val:Ljava/lang/String;
    const-string v2, "tag"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 674
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 675
    :cond_6
    const-string v2, "number"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 676
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 677
    :cond_7
    const-string v2, "emails"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 679
    const/4 v6, 0x0

    goto :goto_2

    .line 680
    :cond_8
    const-string v2, "pin2"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 681
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 685
    .end local v9           #key:Ljava/lang/String;
    .end local v12           #pair:[Ljava/lang/String;
    .end local v13           #param:Ljava/lang/String;
    .end local v17           #val:Ljava/lang/String;
    :cond_9
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 686
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 689
    :cond_a
    const/16 v2, 0x6f3b

    if-ne v3, v2, :cond_b

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 690
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_b
    move-object/from16 v2, p0

    .line 693
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 694
    .local v15, success:Z
    if-nez v15, :cond_c

    .line 695
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 698
    :cond_c
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 635
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method deleteSimPbkEntry(Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;
    .locals 5
    .parameter "recordNumber"

    .prologue
    const/4 v4, 0x0

    .line 1051
    const/4 v0, 0x0

    .line 1054
    .local v0, error:Lcom/android/internal/telephony/ADNErrorType;
    :try_start_0
    const-string v3, "simphonebook"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 1057
    .local v2, simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_0

    .line 1058
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IIccPhoneBook;->deleteSimPbkEntry(I)Lcom/android/internal/telephony/ADNErrorType;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1070
    .end local v2           #simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return-object v0

    .line 1060
    :catch_0
    move-exception v1

    .line 1061
    .local v1, ex:Landroid/os/RemoteException;
    new-instance v0, Lcom/android/internal/telephony/ADNErrorType;

    .end local v0           #error:Lcom/android/internal/telephony/ADNErrorType;
    invoke-direct {v0}, Lcom/android/internal/telephony/ADNErrorType;-><init>()V

    .line 1062
    .restart local v0       #error:Lcom/android/internal/telephony/ADNErrorType;
    iput-boolean v4, v0, Lcom/android/internal/telephony/ADNErrorType;->success:Z

    goto :goto_0

    .line 1064
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1066
    .local v1, ex:Ljava/lang/SecurityException;
    new-instance v0, Lcom/android/internal/telephony/ADNErrorType;

    .end local v0           #error:Lcom/android/internal/telephony/ADNErrorType;
    invoke-direct {v0}, Lcom/android/internal/telephony/ADNErrorType;-><init>()V

    .line 1067
    .restart local v0       #error:Lcom/android/internal/telephony/ADNErrorType;
    iput-boolean v4, v0, Lcom/android/internal/telephony/ADNErrorType;->success:Z

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 411
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 418
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    .line 411
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 23
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 456
    const/16 v20, 0x0

    .line 460
    .local v20, pin2:Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v19

    .line 463
    .local v19, match:I
    const/4 v1, 0x4

    move/from16 v0, v19

    if-ne v0, v1, :cond_4

    .line 464
    const-string v1, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 465
    .local v2, name:Ljava/lang/String;
    const-string v1, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 466
    .local v3, number:Ljava/lang/String;
    const-string v1, "number1"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 467
    .local v4, number1:Ljava/lang/String;
    const-string v1, "number2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 468
    .local v5, number2:Ljava/lang/String;
    const-string v1, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 469
    .local v6, emails:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/IccProvider;->filterOutInvalidCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 470
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/IccProvider;->filterOutInvalidCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 471
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/IccProvider;->filterOutInvalidCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v1, p0

    .line 473
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/IccProvider;->addSimPbkEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;

    move-result-object v18

    .line 475
    .local v18, error:Lcom/android/internal/telephony/ADNErrorType;
    if-eqz v18, :cond_2

    move-object/from16 v0, v18

    iget-boolean v1, v0, Lcom/android/internal/telephony/ADNErrorType;->success:Z

    if-nez v1, :cond_2

    .line 477
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->getHtcSenseVersion()F

    move-result v1

    const v7, 0x3fcccccd

    cmpl-float v1, v1, v7

    if-lez v1, :cond_0

    .line 479
    move-object/from16 v0, v18

    iget v1, v0, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    packed-switch v1, :pswitch_data_0

    .line 487
    :pswitch_0
    sget-object v21, Landroid/provider/HtcUnionContact$SimContacts;->ERROR_URI:Landroid/net/Uri;

    .local v21, resultUri:Landroid/net/Uri;
    :goto_0
    move-object/from16 v12, v20

    .line 588
    .end local v2           #name:Ljava/lang/String;
    .end local v4           #number1:Ljava/lang/String;
    .end local v5           #number2:Ljava/lang/String;
    .end local v6           #emails:Ljava/lang/String;
    .end local v18           #error:Lcom/android/internal/telephony/ADNErrorType;
    .end local v20           #pin2:Ljava/lang/String;
    .end local v21           #resultUri:Landroid/net/Uri;
    .local v12, pin2:Ljava/lang/String;
    :goto_1
    return-object v21

    .line 481
    .end local v12           #pin2:Ljava/lang/String;
    .restart local v2       #name:Ljava/lang/String;
    .restart local v4       #number1:Ljava/lang/String;
    .restart local v5       #number2:Ljava/lang/String;
    .restart local v6       #emails:Ljava/lang/String;
    .restart local v18       #error:Lcom/android/internal/telephony/ADNErrorType;
    .restart local v20       #pin2:Ljava/lang/String;
    :pswitch_1
    sget-object v21, Landroid/provider/HtcUnionContact$SimContacts;->ADN_FULL_URI:Landroid/net/Uri;

    .line 482
    .restart local v21       #resultUri:Landroid/net/Uri;
    goto :goto_0

    .line 484
    .end local v21           #resultUri:Landroid/net/Uri;
    :pswitch_2
    sget-object v1, Landroid/provider/HtcUnionContact$SimContacts;->EMAIL_ANR_FULL_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/internal/telephony/ADNErrorType;->mError_type:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 485
    .restart local v21       #resultUri:Landroid/net/Uri;
    goto :goto_0

    .line 490
    .end local v21           #resultUri:Landroid/net/Uri;
    :cond_0
    move-object/from16 v0, v18

    iget v1, v0, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    const/4 v7, 0x1

    if-ne v1, v7, :cond_1

    .line 493
    sget-object v21, Landroid/provider/HtcUnionContact$SimContacts;->ADN_FULL_URI:Landroid/net/Uri;

    .restart local v21       #resultUri:Landroid/net/Uri;
    goto :goto_0

    .line 498
    .end local v21           #resultUri:Landroid/net/Uri;
    :cond_1
    sget-object v21, Landroid/provider/HtcUnionContact$SimContacts;->ERROR_URI:Landroid/net/Uri;

    .restart local v21       #resultUri:Landroid/net/Uri;
    goto :goto_0

    .line 508
    .end local v21           #resultUri:Landroid/net/Uri;
    :cond_2
    if-nez v18, :cond_3

    .line 509
    sget-object v21, Landroid/provider/HtcUnionContact$SimContacts;->ERROR_URI:Landroid/net/Uri;

    .restart local v21       #resultUri:Landroid/net/Uri;
    goto :goto_0

    .line 514
    .end local v21           #resultUri:Landroid/net/Uri;
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/IccContract$IccPhonebook;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    iget-wide v10, v0, Lcom/android/internal/telephony/ADNErrorType;->index:J

    invoke-static {v1, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 517
    .restart local v21       #resultUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v10, 0x0

    move-object/from16 v0, v18

    iget-wide v11, v0, Lcom/android/internal/telephony/ADNErrorType;->index:J

    const/16 v16, 0x0

    move-object v8, v2

    move-object v9, v3

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    invoke-static/range {v7 .. v16}, Lcom/android/internal/telephony/IccProvider;->insertIntoContact(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 534
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #number1:Ljava/lang/String;
    .end local v5           #number2:Ljava/lang/String;
    .end local v6           #emails:Ljava/lang/String;
    .end local v18           #error:Lcom/android/internal/telephony/ADNErrorType;
    .end local v21           #resultUri:Landroid/net/Uri;
    :cond_4
    packed-switch v19, :pswitch_data_1

    .line 545
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot insert into URL: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 536
    :pswitch_3
    const/16 v8, 0x6f3a

    .local v8, efType:I
    move-object/from16 v12, v20

    .line 549
    .end local v20           #pin2:Ljava/lang/String;
    .restart local v12       #pin2:Ljava/lang/String;
    :goto_2
    const-string v1, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 550
    .local v9, tag:Ljava/lang/String;
    const-string v1, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 552
    .restart local v3       #number:Ljava/lang/String;
    const/4 v11, 0x0

    move-object/from16 v7, p0

    move-object v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/IccProvider;->addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    .line 554
    .local v22, success:Z
    if-nez v22, :cond_6

    .line 556
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getLastError()Lcom/android/internal/telephony/ADNErrorType;

    move-result-object v18

    .line 558
    .restart local v18       #error:Lcom/android/internal/telephony/ADNErrorType;
    if-eqz v18, :cond_5

    move-object/from16 v0, v18

    iget v1, v0, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    const/4 v7, 0x1

    if-ne v1, v7, :cond_5

    .line 560
    sget-object v21, Landroid/provider/HtcUnionContact$SimContacts;->ADN_FULL_URI:Landroid/net/Uri;

    goto/16 :goto_1

    .line 540
    .end local v3           #number:Ljava/lang/String;
    .end local v8           #efType:I
    .end local v9           #tag:Ljava/lang/String;
    .end local v12           #pin2:Ljava/lang/String;
    .end local v18           #error:Lcom/android/internal/telephony/ADNErrorType;
    .end local v22           #success:Z
    .restart local v20       #pin2:Ljava/lang/String;
    :pswitch_4
    const/16 v8, 0x6f3b

    .line 541
    .restart local v8       #efType:I
    const-string v1, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 542
    .end local v20           #pin2:Ljava/lang/String;
    .restart local v12       #pin2:Ljava/lang/String;
    goto :goto_2

    .line 563
    .restart local v3       #number:Ljava/lang/String;
    .restart local v9       #tag:Ljava/lang/String;
    .restart local v18       #error:Lcom/android/internal/telephony/ADNErrorType;
    .restart local v22       #success:Z
    :cond_5
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 566
    .end local v18           #error:Lcom/android/internal/telephony/ADNErrorType;
    :cond_6
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v1, "content://icc/"

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 567
    .local v17, buf:Ljava/lang/StringBuilder;
    packed-switch v19, :pswitch_data_2

    .line 578
    :goto_3
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 588
    .restart local v21       #resultUri:Landroid/net/Uri;
    goto/16 :goto_1

    .line 569
    .end local v21           #resultUri:Landroid/net/Uri;
    :pswitch_5
    const-string v1, "adn/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 573
    :pswitch_6
    const-string v1, "fdn/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 479
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 534
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 567
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 270
    const-string v0, "ro.kernel.qemu"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccProvider;->mSimulator:Z

    .line 287
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/telephony/IccProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 290
    return v2

    .line 274
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccProvider;->mSimulator:Z

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    const/4 v2, 0x0

    const/16 v7, 0x6f49

    const/4 v6, 0x6

    const/4 v5, 0x4

    .line 299
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x51

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x49

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x54

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x55

    if-ne v3, v4, :cond_1

    .line 304
    :cond_0
    const-string v3, "IccProvider"

    const-string v4, "This project does not support SIM phonebook."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :goto_0
    return-object v2

    .line 311
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v3

    if-nez v3, :cond_2

    .line 313
    const-string v3, "IccProvider"

    const-string v4, "SIM state is not ready. Can not access SIM phonebook."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 322
    :cond_2
    const/4 v2, 0x0

    sput v2, Lcom/android/internal/telephony/IccProvider;->mUrl:I

    .line 325
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccProvider;->mSimulator:Z

    if-nez v2, :cond_3

    .line 326
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 353
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 328
    :pswitch_1
    const/16 v2, 0x6f3a

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 397
    .local v1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :goto_1
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 398
    new-instance v2, Lcom/android/internal/telephony/ArrayListCursor;

    sget-object v3, Lcom/android/internal/telephony/ImportUtils;->PB_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/android/internal/telephony/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 332
    .end local v1           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_2
    const/16 v2, 0x6f3b

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 333
    .restart local v1       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    goto :goto_1

    .line 336
    .end local v1           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_3
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 337
    .restart local v1       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    goto :goto_1

    .line 341
    .end local v1           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_4
    sput v6, Lcom/android/internal/telephony/IccProvider;->mUrl:I

    .line 342
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 343
    .restart local v1       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    goto :goto_1

    .line 348
    .end local v1           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->loadPBKEntryFromRIL()Ljava/util/ArrayList;

    move-result-object v1

    .line 349
    .restart local v1       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    goto :goto_1

    .line 357
    .end local v1           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 360
    .restart local v1       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v0, contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "Ron Stevens/H"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    const-string v2, "512-555-5038"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .restart local v0       #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "Ron Stevens/M"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    const-string v2, "512-555-8305"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .restart local v0       #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "Melissa Owens"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    const-string v2, "512-555-8305"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    const-string v2, "3"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .restart local v0       #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "Directory Assistence"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    const-string v2, "411"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    const-string v2, "4"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 400
    .end local v0           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 401
    new-instance v2, Lcom/android/internal/telephony/ArrayListCursor;

    sget-object v3, Lcom/android/internal/telephony/ImportUtils;->PB_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/android/internal/telephony/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 405
    :cond_5
    new-instance v2, Lcom/android/internal/telephony/ArrayListCursor;

    sget-object v3, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/android/internal/telephony/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 326
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 31
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 704
    const/16 v28, 0x0

    .line 705
    .local v28, pin2:Ljava/lang/String;
    const/16 v24, 0x0

    .line 710
    .local v24, error:Lcom/android/internal/telephony/ADNErrorType;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v9, 0x5

    if-eq v2, v9, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v2

    if-nez v2, :cond_0

    .line 712
    const-string v2, "IccProvider"

    const-string v9, "SIM state is not ready. Can not access SIM phonebook."

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const/16 v27, 0x0

    move-object/from16 v21, v28

    .line 801
    .end local v28           #pin2:Ljava/lang/String;
    .local v21, pin2:Ljava/lang/String;
    :goto_0
    return v27

    .line 717
    .end local v21           #pin2:Ljava/lang/String;
    .restart local v28       #pin2:Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v25

    .line 719
    .local v25, match:I
    const/4 v2, 0x5

    move/from16 v0, v25

    if-ne v0, v2, :cond_4

    .line 720
    const/16 v27, 0x1

    .line 721
    .local v27, numerOfUpdate:I
    const-string v2, "recordNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 722
    .local v3, recordNumber:Ljava/lang/String;
    const-string v2, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 723
    .local v4, name:Ljava/lang/String;
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 724
    .local v5, number:Ljava/lang/String;
    const-string v2, "number1"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 725
    .local v6, number1:Ljava/lang/String;
    const-string v2, "number2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 726
    .local v7, number2:Ljava/lang/String;
    const-string v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 729
    .local v8, emails:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/IccProvider;->filterOutInvalidCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 730
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/IccProvider;->filterOutInvalidCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 731
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/IccProvider;->filterOutInvalidCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    .line 734
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/IccProvider;->updateSimPbkEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;

    move-result-object v24

    .line 736
    if-eqz v24, :cond_1

    move-object/from16 v0, v24

    iget-boolean v2, v0, Lcom/android/internal/telephony/ADNErrorType;->success:Z

    if-nez v2, :cond_1

    .line 737
    const/16 v27, 0x0

    .line 739
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->getHtcSenseVersion()F

    move-result v2

    const v9, 0x3fcccccd

    cmpl-float v2, v2, v9

    if-lez v2, :cond_3

    .line 741
    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    packed-switch v2, :pswitch_data_0

    .line 746
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    sget-object v9, Landroid/provider/HtcUnionContact$SimContacts;->ERROR_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 743
    :pswitch_0
    sget-object v2, Landroid/provider/HtcUnionContact$SimContacts;->EMAIL_ANR_FULL_URI:Landroid/net/Uri;

    move-object/from16 v0, v24

    iget v9, v0, Lcom/android/internal/telephony/ADNErrorType;->mError_type:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    .line 744
    .local v29, resultUri:Landroid/net/Uri;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-virtual/range {v29 .. v29}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 752
    .end local v29           #resultUri:Landroid/net/Uri;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 755
    .local v14, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v9, p0

    move-object v10, v3

    move-object v11, v5

    move-object v12, v6

    move-object v13, v7

    .line 756
    invoke-direct/range {v9 .. v14}, Lcom/android/internal/telephony/IccProvider;->udateSpeedDialList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 760
    :cond_2
    invoke-static {v14, v3}, Lcom/android/internal/telephony/ImportUtils;->deleteSimContactData(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v23

    .line 763
    .local v23, rawId:I
    if-lez v23, :cond_3

    .line 764
    const/16 v17, 0x0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/internal/telephony/ADNErrorType;->index:J

    move-wide/from16 v18, v0

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    invoke-static/range {v14 .. v23}, Lcom/android/internal/telephony/IccProvider;->insertIntoContact(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .end local v14           #resolver:Landroid/content/ContentResolver;
    .end local v23           #rawId:I
    :cond_3
    move-object/from16 v21, v28

    .line 769
    .end local v28           #pin2:Ljava/lang/String;
    .restart local v21       #pin2:Ljava/lang/String;
    goto/16 :goto_0

    .line 772
    .end local v3           #recordNumber:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #number1:Ljava/lang/String;
    .end local v7           #number2:Ljava/lang/String;
    .end local v8           #emails:Ljava/lang/String;
    .end local v21           #pin2:Ljava/lang/String;
    .end local v27           #numerOfUpdate:I
    .restart local v28       #pin2:Ljava/lang/String;
    :cond_4
    packed-switch v25, :pswitch_data_1

    .line 783
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot insert into URL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 774
    :pswitch_1
    const/16 v16, 0x6f3a

    .local v16, efType:I
    move-object/from16 v21, v28

    .line 787
    .end local v28           #pin2:Ljava/lang/String;
    .restart local v21       #pin2:Ljava/lang/String;
    :goto_1
    const-string v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 788
    .local v17, tag:Ljava/lang/String;
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 789
    .restart local v5       #number:Ljava/lang/String;
    const/4 v8, 0x0

    .line 790
    .local v8, emails:[Ljava/lang/String;
    const-string v2, "newTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 791
    .local v19, newTag:Ljava/lang/String;
    const-string v2, "newNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 792
    .local v20, newNumber:Ljava/lang/String;
    const/16 v26, 0x0

    .local v26, newEmails:[Ljava/lang/String;
    move-object/from16 v15, p0

    move-object/from16 v18, v5

    .line 794
    invoke-direct/range {v15 .. v21}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    .line 797
    .local v30, success:Z
    if-nez v30, :cond_5

    .line 798
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 778
    .end local v5           #number:Ljava/lang/String;
    .end local v8           #emails:[Ljava/lang/String;
    .end local v16           #efType:I
    .end local v17           #tag:Ljava/lang/String;
    .end local v19           #newTag:Ljava/lang/String;
    .end local v20           #newNumber:Ljava/lang/String;
    .end local v21           #pin2:Ljava/lang/String;
    .end local v26           #newEmails:[Ljava/lang/String;
    .end local v30           #success:Z
    .restart local v28       #pin2:Ljava/lang/String;
    :pswitch_2
    const/16 v16, 0x6f3b

    .line 779
    .restart local v16       #efType:I
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 780
    .end local v28           #pin2:Ljava/lang/String;
    .restart local v21       #pin2:Ljava/lang/String;
    goto :goto_1

    .line 801
    .restart local v5       #number:Ljava/lang/String;
    .restart local v8       #emails:[Ljava/lang/String;
    .restart local v17       #tag:Ljava/lang/String;
    .restart local v19       #newTag:Ljava/lang/String;
    .restart local v20       #newNumber:Ljava/lang/String;
    .restart local v26       #newEmails:[Ljava/lang/String;
    .restart local v30       #success:Z
    :cond_5
    const/16 v27, 0x1

    goto/16 :goto_0

    .line 741
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    .line 772
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method updateSimPbkEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;
    .locals 8
    .parameter "recordNumber"
    .parameter "name"
    .parameter "number"
    .parameter "number1"
    .parameter "number2"
    .parameter "email"

    .prologue
    .line 1075
    const/4 v7, 0x0

    .line 1080
    .local v7, error:Lcom/android/internal/telephony/ADNErrorType;
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1082
    .local v0, simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 1083
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateSimPbkEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1090
    .end local v0           #simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return-object v7

    .line 1087
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1085
    :catch_1
    move-exception v1

    goto :goto_0
.end method
