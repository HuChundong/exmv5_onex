.class public Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;
.super Ljava/lang/Object;
.source "PickerLandingPageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$DownloadPhotoCallback;,
        Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PickerLandingPageManager"

.field private static mPickerParameter:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;

.field private static mReferenceCount:I

.field private static mThis:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mThis:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;

    .line 25
    sput-object v0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mPickerParameter:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;

    .line 26
    const/4 v0, 0x0

    sput v0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mReferenceCount:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-static {p0, p1, p2}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->sendMessage(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public static destroyInstance()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 45
    sget v0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mReferenceCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mReferenceCount:I

    .line 46
    sget v0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mReferenceCount:I

    if-gtz v0, :cond_0

    .line 48
    const/4 v0, 0x0

    sput v0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mReferenceCount:I

    .line 49
    sput-object v1, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mPickerParameter:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;

    .line 50
    sput-object v1, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mThis:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;

    .line 52
    :cond_0
    sget-boolean v0, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 53
    const-string v0, "PickerLandingPageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][PickerLandingPageManager][destroyInstance]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mReferenceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_1
    return-void
.end method

.method public static downloadPhoto(Landroid/content/Context;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;)V
    .locals 7
    .parameter "context"
    .parameter "aPhoto"
    .parameter "handler"

    .prologue
    .line 141
    sget-boolean v5, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 142
    const-string v5, "PickerLandingPageManager"

    const-string v6, "[HTCAlbum][PickerLandingPageManager][downloadPhoto]:"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    invoke-static {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->instance(Landroid/content/Context;)Lcom/htc/opensense/cache/CacheManager;

    move-result-object v1

    .line 145
    .local v1, fileDownloadMgr:Lcom/htc/opensense/cache/CacheManager;
    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, szUID:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, szURL:Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 148
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v3, :cond_1

    .line 149
    const-string v5, "photo_id"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_1
    if-eqz v4, :cond_2

    .line 151
    const-string v5, "photo_url"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_2
    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getPhotoURLHeader()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, photoHeader:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getPhotoURLHeader()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 155
    new-instance v5, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$DownloadPhotoCallback;

    invoke-direct {v5, p2, v1}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$DownloadPhotoCallback;-><init>(Landroid/os/Handler;Lcom/htc/opensense/cache/CacheManager;)V

    invoke-virtual {v1, v4, v5, v0}, Lcom/htc/opensense/cache/CacheManager;->downloadPhotoByUrl(Ljava/lang/String;Lcom/htc/opensense/cache/DownloadCallback;Landroid/os/Bundle;)I

    .line 159
    :goto_0
    const/16 v5, 0x2724

    const/4 v6, 0x0

    invoke-static {p2, v5, v6}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->sendMessage(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 160
    return-void

    .line 157
    :cond_3
    new-instance v5, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$DownloadPhotoCallback;

    invoke-direct {v5, p2, v1}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$DownloadPhotoCallback;-><init>(Landroid/os/Handler;Lcom/htc/opensense/cache/CacheManager;)V

    invoke-virtual {v1, v4, v2, v5, v0}, Lcom/htc/opensense/cache/CacheManager;->downloadPhotoByUrl(Ljava/lang/String;Ljava/lang/String;Lcom/htc/opensense/cache/DownloadCallback;Landroid/os/Bundle;)I

    goto :goto_0
.end method

.method public static instance()Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;
    .locals 3

    .prologue
    .line 32
    sget-object v0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mThis:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;

    invoke-direct {v0}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;-><init>()V

    sput-object v0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mThis:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;

    .line 35
    new-instance v0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;

    invoke-direct {v0}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;-><init>()V

    sput-object v0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mPickerParameter:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;

    .line 37
    :cond_0
    sget v0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mReferenceCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mReferenceCount:I

    .line 38
    sget-boolean v0, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 39
    const-string v0, "PickerLandingPageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][PickerLandingPageManager][instance]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mReferenceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_1
    sget-object v0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mThis:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;

    return-object v0
.end method

.method private static sendMessage(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "handler"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 164
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 165
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 166
    return-void
.end method


# virtual methods
.method public getPickerLandingPageParameter()Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mThis:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mPickerParameter:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;

    goto :goto_0
.end method

.method public resetPickerParameters()V
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mPickerParameter:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mPickerParameter:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;

    invoke-virtual {v0}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->resetParameters()V

    .line 137
    :cond_0
    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 123
    sget-object v0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mPickerParameter:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mPickerParameter:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;

    invoke-virtual {v0, p1}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->setExtras(Landroid/os/Bundle;)V

    .line 125
    :cond_0
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 129
    sget-object v0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mPickerParameter:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mPickerParameter:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;

    invoke-virtual {v0, p1}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->setMimeType(Ljava/lang/String;)V

    .line 131
    :cond_0
    return-void
.end method

.method public setPickerResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "serviceName"
    .parameter "albumName"
    .parameter "userID"
    .parameter "albumID"
    .parameter "photoID"

    .prologue
    .line 107
    sget-object v0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mThis:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mPickerParameter:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;

    if-nez v0, :cond_1

    .line 109
    :cond_0
    const-string v0, "PickerLandingPageManager"

    const-string v1, "[HTCAlbum][PickerLandingPageManager][setPickerResult]: illegal instance state"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_0
    return-void

    .line 113
    :cond_1
    sget-object v0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mPickerParameter:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;

    invoke-virtual {v0, p1}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->setServiceName(Ljava/lang/String;)V

    .line 114
    sget-object v0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mPickerParameter:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;

    invoke-virtual {v0, p2}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->setAlbumName(Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mPickerParameter:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;

    invoke-virtual {v0, p3}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->setUserId(Ljava/lang/String;)V

    .line 116
    sget-object v0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mPickerParameter:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;

    invoke-virtual {v0, p4}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->setAlbumId(Ljava/lang/String;)V

    .line 117
    sget-object v0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mPickerParameter:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;

    invoke-virtual {v0, p5}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->setPhotoId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPickerType(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 67
    sget-object v5, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mThis:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mPickerParameter:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;

    if-eqz v5, :cond_0

    if-nez p1, :cond_2

    .line 69
    :cond_0
    const-string v5, "PickerLandingPageManager"

    const-string v6, "[HTCAlbum][PickerLandingPageManager][setPickerType]: illegal input parameter"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_1
    :goto_0
    return-void

    .line 73
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, type:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 76
    .local v1, bundle:Landroid/os/Bundle;
    const-string v5, "com.htc.album.ACTION_PICK_LANDING_PAGE_SINGLE_ITEM"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 78
    sget-object v5, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mPickerParameter:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;

    invoke-virtual {v5}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->enableSingleItemPicker()V

    .line 79
    sget-object v5, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mPickerParameter:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;

    invoke-virtual {v5}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->enableDoCrop()V

    .line 86
    :cond_3
    :goto_1
    sget-object v5, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mPickerParameter:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;

    invoke-virtual {v5}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->enableFilterPhotoOfMe()V

    .line 88
    const-string v5, "image/*"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 89
    sget-object v5, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mPickerParameter:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;

    invoke-virtual {v5}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->enableImageOnly()V

    .line 93
    :cond_4
    :goto_2
    const-string v5, "crop"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, doCrop:Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 95
    sget-object v5, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mPickerParameter:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;

    invoke-virtual {v5}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->enableDoCrop()V

    .line 97
    :cond_5
    if-eqz v1, :cond_1

    .line 99
    const-string v5, "cropType"

    const/16 v6, 0x7f01

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 100
    .local v2, cropMode:I
    const/16 v5, 0x7f04

    if-ne v5, v2, :cond_1

    .line 101
    sget-object v5, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mPickerParameter:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;

    invoke-virtual {v5}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->enableWallpaperCrop()V

    goto :goto_0

    .line 81
    .end local v2           #cropMode:I
    .end local v3           #doCrop:Ljava/lang/String;
    :cond_6
    const-string v5, "com.htc.album.ACTION_PICK_LANDING_PAGE_FOLDER_PICKER"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 83
    sget-object v5, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mPickerParameter:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;

    invoke-virtual {v5}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->enableAlbumPicker()V

    goto :goto_1

    .line 90
    :cond_7
    const-string v5, "video/*"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 91
    sget-object v5, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->mPickerParameter:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;

    invoke-virtual {v5}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->enableVideoOnly()V

    goto :goto_2
.end method
