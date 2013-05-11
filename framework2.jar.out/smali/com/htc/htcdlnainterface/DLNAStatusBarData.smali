.class public Lcom/htc/htcdlnainterface/DLNAStatusBarData;
.super Ljava/lang/Object;
.source "DLNAStatusBarData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/htcdlnainterface/DLNAStatusBarData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPendingIntent:Landroid/app/PendingIntent;

.field private nFilterType:I

.field private szActionLaunch:Ljava/lang/String;

.field private szAppName:Ljava/lang/String;

.field private szControllerName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 204
    new-instance v0, Lcom/htc/htcdlnainterface/DLNAStatusBarData$1;

    invoke-direct {v0}, Lcom/htc/htcdlnainterface/DLNAStatusBarData$1;-><init>()V

    sput-object v0, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 218
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->nFilterType:I

    .line 25
    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->szAppName:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->szControllerName:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->mPendingIntent:Landroid/app/PendingIntent;

    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 227
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->nFilterType:I

    .line 25
    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->szAppName:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->szControllerName:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->mPendingIntent:Landroid/app/PendingIntent;

    .line 228
    invoke-virtual {p0, p1}, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->readFromParcel(Landroid/os/Parcel;)V

    .line 229
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public getActionLaunch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->szAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getControllerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->szControllerName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterType()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->nFilterType:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 189
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->nFilterType:I

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->szAppName:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->szControllerName:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    .line 193
    const-class v1, Landroid/app/PendingIntent;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->mPendingIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setActionLaunch(Ljava/lang/String;)V
    .locals 0
    .parameter "actionLaunch"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .parameter "appName"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->szAppName:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "pendingIntent"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->mPendingIntent:Landroid/app/PendingIntent;

    .line 146
    return-void
.end method

.method public setControllerName(Ljava/lang/String;)V
    .locals 0
    .parameter "controllerName"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->szControllerName:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setFilterType(I)V
    .locals 0
    .parameter "filterType"

    .prologue
    .line 65
    iput p1, p0, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->nFilterType:I

    .line 66
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 169
    :try_start_0
    iget v1, p0, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->nFilterType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->szAppName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->szControllerName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
