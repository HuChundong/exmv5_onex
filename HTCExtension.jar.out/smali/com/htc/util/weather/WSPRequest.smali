.class public Lcom/htc/util/weather/WSPRequest;
.super Ljava/lang/Object;
.source "WSPRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final LOG_FLAG:Z

.field private static final LOG_FLAG_SECURITY:Z

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private param1:Ljava/lang/String;

.field private param2:Ljava/lang/String;

.field private reqCurLocCacheData:Lcom/htc/util/weather/WSPData;

.field private reqCurLocCountry:Ljava/lang/String;

.field private reqCurLocLat:Ljava/lang/String;

.field private reqCurLocLatTrim:Ljava/lang/String;

.field private reqCurLocLng:Ljava/lang/String;

.field private reqCurLocLngTrim:Ljava/lang/String;

.field private reqCurLocName:Ljava/lang/String;

.field private reqCurLocState:Ljava/lang/String;

.field private reqCurLocTimezoneId:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/util/weather/WSPRequest;->LOG_FLAG:Z

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->type:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->param1:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->param2:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/weather/WSPRequest;->PROJECTION:[Ljava/lang/String;

    .line 47
    new-instance v0, Lcom/htc/util/weather/WSPRequest$1;

    invoke-direct {v0}, Lcom/htc/util/weather/WSPRequest$1;-><init>()V

    sput-object v0, Lcom/htc/util/weather/WSPRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/util/weather/WSPRequest;->type:I

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->param1:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->param2:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLat:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLng:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLatTrim:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLngTrim:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocName:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocState:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocCountry:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocTimezoneId:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocCacheData:Lcom/htc/util/weather/WSPData;

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v2, p0, Lcom/htc/util/weather/WSPRequest;->type:I

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->param1:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->param2:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLat:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLng:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLatTrim:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLngTrim:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocName:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocState:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocCountry:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocTimezoneId:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocCacheData:Lcom/htc/util/weather/WSPData;

    .line 95
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    sget-object v1, Lcom/htc/util/weather/WSPRequest;->PROJECTION:[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 96
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/util/weather/WSPRequest;->type:I

    .line 97
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->param1:Ljava/lang/String;

    .line 98
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->param2:Ljava/lang/String;

    .line 100
    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/util/weather/WSPRequest;->type:I

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->param1:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->param2:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLat:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLng:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLatTrim:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLngTrim:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocName:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocState:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocCountry:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocTimezoneId:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocCacheData:Lcom/htc/util/weather/WSPData;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/util/weather/WSPRequest;->type:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->param1:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->param2:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLat:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLng:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLatTrim:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLngTrim:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocName:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocState:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocCountry:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocTimezoneId:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/util/weather/WSPData;

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocCacheData:Lcom/htc/util/weather/WSPData;

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/util/weather/WSPRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/htc/util/weather/WSPRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/htc/util/weather/WSPRequest;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public getCurLocCacheData()Lcom/htc/util/weather/WSPData;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocCacheData:Lcom/htc/util/weather/WSPData;

    return-object v0
.end method

.method public getParam1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->param1:Ljava/lang/String;

    return-object v0
.end method

.method public getParam2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->param2:Ljava/lang/String;

    return-object v0
.end method

.method public getReqCurLocCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getReqCurLocLat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLat:Ljava/lang/String;

    return-object v0
.end method

.method public getReqCurLocLatTrim()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLatTrim:Ljava/lang/String;

    return-object v0
.end method

.method public getReqCurLocLng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLng:Ljava/lang/String;

    return-object v0
.end method

.method public getReqCurLocLngTrim()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLngTrim:Ljava/lang/String;

    return-object v0
.end method

.method public getReqCurLocName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocName:Ljava/lang/String;

    return-object v0
.end method

.method public getReqCurLocState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocState:Ljava/lang/String;

    return-object v0
.end method

.method public getReqCurLocTimezoneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocTimezoneId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/htc/util/weather/WSPRequest;->type:I

    return v0
.end method

.method public isCurEqualsToCacheCur()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocCacheData:Lcom/htc/util/weather/WSPData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setReqCurLoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/weather/WSPData;)V
    .locals 0
    .parameter "reqCurLocLat"
    .parameter "reqCurLocLng"
    .parameter "reqCurLocLatTrim"
    .parameter "reqCurLocLngTrim"
    .parameter "reqCurLocName"
    .parameter "reqCurLocState"
    .parameter "reqCurLocCountry"
    .parameter "reqCurLocTimezoneId"
    .parameter "reqCurLocCacheData"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLat:Ljava/lang/String;

    .line 147
    iput-object p2, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLng:Ljava/lang/String;

    .line 148
    iput-object p3, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLatTrim:Ljava/lang/String;

    .line 149
    iput-object p4, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLngTrim:Ljava/lang/String;

    .line 150
    iput-object p5, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocName:Ljava/lang/String;

    .line 151
    iput-object p6, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocState:Ljava/lang/String;

    .line 152
    iput-object p7, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocCountry:Ljava/lang/String;

    .line 153
    iput-object p8, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocTimezoneId:Ljava/lang/String;

    .line 154
    iput-object p9, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocCacheData:Lcom/htc/util/weather/WSPData;

    .line 155
    return-void
.end method

.method public setTypeCurrentLocation()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/util/weather/WSPRequest;->type:I

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->param1:Ljava/lang/String;

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->param2:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setTypeLatitude(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 123
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/util/weather/WSPRequest;->type:I

    .line 124
    iput-object p1, p0, Lcom/htc/util/weather/WSPRequest;->param1:Ljava/lang/String;

    .line 125
    iput-object p2, p0, Lcom/htc/util/weather/WSPRequest;->param2:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setTypeLocCode(Ljava/lang/String;)V
    .locals 1
    .parameter "locCode"

    .prologue
    .line 113
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/util/weather/WSPRequest;->type:I

    .line 114
    iput-object p1, p0, Lcom/htc/util/weather/WSPRequest;->param1:Ljava/lang/String;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->param2:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public toDebugInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 202
    sget-boolean v2, Lcom/htc/util/weather/WSPRequest;->LOG_FLAG:Z

    if-eqz v2, :cond_0

    .line 204
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/util/weather/WSPRequest;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    const-string v2, ", isCurEqualsToCacheCur: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/util/weather/WSPRequest;->isCurEqualsToCacheCur()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 227
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :goto_0
    return-object v2

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 224
    const-string v2, "Exception is caught. (can\'t generate debug info)[WSPRequset]"

    goto :goto_0

    .line 227
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/htc/util/weather/WSPRequest;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/util/weather/WSPRequest;->param1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/util/weather/WSPRequest;->param2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 62
    iget v0, p0, Lcom/htc/util/weather/WSPRequest;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->param1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->param2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLatTrim:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLngTrim:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocCountry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocTimezoneId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocCacheData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 74
    return-void
.end method
