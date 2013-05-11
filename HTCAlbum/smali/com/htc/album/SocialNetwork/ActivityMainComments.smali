.class public Lcom/htc/album/SocialNetwork/ActivityMainComments;
.super Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;
.source "ActivityMainComments.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ActivityMainComments"


# instance fields
.field private mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

.field private mBmpPhoto:Landroid/graphics/Bitmap;

.field private mBmpPhotoDefault:Landroid/graphics/Bitmap;

.field private mBmpPhotoFull:Landroid/graphics/Bitmap;

.field private mBmpUser:Landroid/graphics/Bitmap;

.field private mClickListener_EditComment:Landroid/view/View$OnClickListener;

.field protected mCommentBtn:Lcom/htc/widget/HtcAutoCompleteTextView;

.field private mCommentBtnLayout:Landroid/widget/RelativeLayout;

.field protected mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

.field private mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

.field private mIntent:Landroid/content/Intent;

.field mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field protected mListView:Lcom/htc/widget/HtcListView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;-><init>()V

    .line 75
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mListView:Lcom/htc/widget/HtcListView;

    .line 76
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mCommentBtn:Lcom/htc/widget/HtcAutoCompleteTextView;

    .line 77
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 78
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mCommentBtnLayout:Landroid/widget/RelativeLayout;

    .line 79
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mIntent:Landroid/content/Intent;

    .line 80
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    .line 82
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 85
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpUser:Landroid/graphics/Bitmap;

    .line 86
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhoto:Landroid/graphics/Bitmap;

    .line 87
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhotoFull:Landroid/graphics/Bitmap;

    .line 88
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhotoDefault:Landroid/graphics/Bitmap;

    .line 89
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    .line 610
    new-instance v0, Lcom/htc/album/SocialNetwork/ActivityMainComments$1;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments$1;-><init>(Lcom/htc/album/SocialNetwork/ActivityMainComments;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mClickListener_EditComment:Landroid/view/View$OnClickListener;

    .line 650
    new-instance v0, Lcom/htc/album/SocialNetwork/ActivityMainComments$2;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments$2;-><init>(Lcom/htc/album/SocialNetwork/ActivityMainComments;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 657
    new-instance v0, Lcom/htc/album/SocialNetwork/ActivityMainComments$3;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments$3;-><init>(Lcom/htc/album/SocialNetwork/ActivityMainComments;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/SocialNetwork/ActivityMainComments;)Lcom/htc/album/SocialNetwork/ListViewAdapterComments;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    return-object v0
.end method

.method private isFileCacheExist()Z
    .locals 4

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    invoke-static {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private onSyncCommentHeader()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 631
    const-string v1, "ActivityMainComments"

    const-string v2, "[ActivityMainComments][onSyncCommentHeader]:"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    if-nez v1, :cond_1

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getCommentHeader()Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    move-result-object v0

    .line 637
    .local v0, commentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;
    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->refreshCommentHeaderCache()V

    .line 644
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    if-eqz v1, :cond_2

    .line 645
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    const/16 v2, 0x4e89

    invoke-virtual {v1, v2, v4, v3}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 647
    :cond_2
    const/16 v1, 0x2728

    invoke-virtual {p0, v1, v4, v3}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private readCommentHeaderCache()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 719
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    invoke-static {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->readCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private udpateHeaderDataAndCache()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 415
    const/4 v2, 0x0

    .line 416
    .local v2, commentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    if-eqz v3, :cond_0

    .line 418
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v3}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getCommentHeader()Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    move-result-object v2

    .line 420
    :cond_0
    if-nez v2, :cond_2

    .line 422
    const-string v3, "ActivityMainComments"

    const-string v4, "[ActivityMainComments][udpateHeaderDataAndCache]: Comment header NG..."

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    :cond_1
    :goto_0
    return-void

    .line 426
    :cond_2
    const/4 v0, 0x0

    .line 427
    .local v0, bHasDataUpdated:Z
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    if-eqz v3, :cond_3

    .line 429
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getBuddyIconURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->setPersonIconURL(Ljava/lang/String;)V

    .line 430
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->setPersonName(Ljava/lang/String;)V

    .line 432
    const/4 v0, 0x1

    .line 435
    :cond_3
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    if-eqz v3, :cond_4

    .line 437
    sget-object v3, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 439
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->setPhotoDescription(Ljava/lang/String;)V

    .line 451
    :goto_1
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->setTime(J)V

    .line 453
    const/4 v0, 0x1

    .line 455
    :cond_4
    if-ne v5, v0, :cond_1

    .line 457
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onSyncCommentHeader()V

    .line 459
    const/4 v1, 0x0

    .line 460
    .local v1, bNeedToWriteCache:Z
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v3, :cond_8

    .line 463
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isEnableCommentCache()Z

    move-result v1

    .line 470
    :cond_5
    :goto_2
    if-ne v5, v1, :cond_1

    .line 472
    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getItem()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->writeCommentHeaderCache(Ljava/lang/Object;)V

    goto :goto_0

    .line 441
    .end local v1           #bNeedToWriteCache:Z
    :cond_6
    sget-object v3, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v3, v3, v5

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 443
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->setPhotoName(Ljava/lang/String;)V

    .line 444
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->setPhotoDescription(Ljava/lang/String;)V

    goto :goto_1

    .line 448
    :cond_7
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->setPhotoName(Ljava/lang/String;)V

    .line 449
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->setPhotoDescription(Ljava/lang/String;)V

    goto :goto_1

    .line 465
    .restart local v1       #bNeedToWriteCache:Z
    :cond_8
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mIntent:Landroid/content/Intent;

    const-string v4, "from_outside"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_5

    .line 468
    const/4 v1, 0x1

    goto :goto_2
.end method

.method private writeCommentHeaderCache(Ljava/lang/Object;)V
    .locals 4
    .parameter "object"

    .prologue
    .line 710
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    invoke-static {v0, v1, v2, p1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->writeCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 715
    return-void
.end method


# virtual methods
.method public RelayoutPageView(I)V
    .locals 0
    .parameter "nLayoutType"

    .prologue
    .line 628
    return-void
.end method

.method protected createAdapter()V
    .locals 0

    .prologue
    .line 669
    return-void
.end method

.method protected createListView()V
    .locals 0

    .prologue
    .line 674
    return-void
.end method

.method protected initDataPlugin(Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;)V
    .locals 13
    .parameter "info"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 678
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    if-eqz v5, :cond_0

    .line 680
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v5}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 682
    :cond_0
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-nez v5, :cond_2

    .line 684
    const-string v5, "ActivityMainComments"

    const-string v6, "[ActivityMainComment][initDataPlugin]: mSNManager is null..."

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    :cond_1
    :goto_0
    return-void

    .line 688
    :cond_2
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v6, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 689
    .local v4, plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateCommentViewPlugin()Ljava/lang/String;

    move-result-object v1

    .line 691
    .local v1, dataplugin:Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_1

    .line 693
    const/16 v5, 0x2724

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, v8}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 694
    sget-boolean v5, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "ActivityMainComments"

    new-array v6, v12, [Ljava/lang/Object;

    const-string v7, "[ActivityMainComment][initDataPlugin]: "

    aput-object v7, v6, v8

    invoke-virtual {v4}, Lcom/htc/opensense/plugin/TabPluginRemote;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string v7, ": ID "

    aput-object v7, v6, v10

    iget-object v7, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mUserID:Ljava/lang/String;

    aput-object v7, v6, v11

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 695
    :cond_3
    new-instance v2, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getUIHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;-><init>(Landroid/os/Handler;)V

    .line 696
    .local v2, handler:Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mUserID:Ljava/lang/String;

    invoke-static {v5, v1, v2, v6}, Lcom/htc/album/SocialNetworkManager/DataPluginHelper;->createCommentViewDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;Ljava/lang/String;)Lcom/htc/opensense/album/plugin/CommentViewPluginBase;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 698
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v5, v6}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z

    .line 699
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mIntent:Landroid/content/Intent;

    if-eqz v5, :cond_1

    .line 701
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 702
    .local v0, bundle:Landroid/os/Bundle;
    const-string v5, "user_id"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 703
    .local v3, pid:Ljava/lang/String;
    sget-boolean v5, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "ActivityMainComments"

    new-array v6, v12, [Ljava/lang/Object;

    const-string v7, "[ActivityMainComment][initDataPlugin]Create opensense data plugin "

    aput-object v7, v6, v8

    invoke-virtual {v4}, Lcom/htc/opensense/plugin/TabPluginRemote;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string v7, ", ID "

    aput-object v7, v6, v10

    aput-object v3, v6, v11

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 689
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #dataplugin:Ljava/lang/String;
    .end local v2           #handler:Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;
    .end local v3           #pid:Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public initPageComponents()V
    .locals 4

    .prologue
    const v1, 0x7f030004

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 249
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    const v0, 0x2090006

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->setContentView(I)V

    .line 252
    invoke-static {p0, v1}, Lcom/htc/album/picker/PickerConstants;->addBodyToEWL(Landroid/app/Activity;I)Lcom/htc/widget/EditWindowLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    .line 259
    :goto_0
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mListView:Lcom/htc/widget/HtcListView;

    .line 260
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mListView:Lcom/htc/widget/HtcListView;

    invoke-static {v0, v1, v2, v2}, Lcom/htc/album/Customizable/CustHtcListViewStyle;->setStyle(Landroid/content/Context;Lcom/htc/widget/HtcListView;ZZ)V

    .line 261
    const v0, 0x7f090014

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcAutoCompleteTextView;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mCommentBtn:Lcom/htc/widget/HtcAutoCompleteTextView;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mCommentBtn:Lcom/htc/widget/HtcAutoCompleteTextView;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mClickListener_EditComment:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mCommentBtn:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAutoCompleteTextView;->setClickable(Z)V

    .line 266
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mCommentBtn:Lcom/htc/widget/HtcAutoCompleteTextView;

    const v1, 0x7f0a00c8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->setHint(I)V

    .line 267
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mCommentBtn:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAutoCompleteTextView;->setFocusable(Z)V

    .line 268
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mCommentBtn:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAutoCompleteTextView;->setInputType(I)V

    .line 269
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mCommentBtn:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAutoCompleteTextView;->setMode(I)V

    .line 272
    :cond_0
    new-instance v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getUIHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    .line 273
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->setDataRequest(Ljava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 275
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 276
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 278
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/widget/EditWindowLayout;->setTitleLabel(Ljava/lang/String;)V

    .line 290
    :cond_1
    :goto_1
    return-void

    .line 256
    :cond_2
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->setContentView(I)V

    goto :goto_0

    .line 283
    :cond_3
    const v0, 0x7f090013

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mCommentBtnLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    .line 285
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mCommentBtnLayout:Landroid/widget/RelativeLayout;

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->FOOTER_BAR_HEIGHT_DIMEN:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    .line 286
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mCommentBtnLayout:Landroid/widget/RelativeLayout;

    invoke-static {p0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getFooterBarBackground(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 288
    :cond_4
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 153
    const-string v2, "ActivityMainComments"

    const-string v3, "[ActivityMainComments][onActivityResult] +"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/16 v2, 0x4e29

    if-ne v2, p1, :cond_0

    if-eqz p3, :cond_0

    .line 156
    const-string v2, "comment_update"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, szComment:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    if-eqz v2, :cond_0

    .line 161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 162
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "photo_id"

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 163
    const-string v2, "comment_update"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    const/16 v3, 0x4e30

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 168
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #szComment:Ljava/lang/String;
    :cond_0
    const-string v2, "ActivityMainComments"

    const-string v3, "[ActivityMainComments][onActivityResult] -"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 103
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 104
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 92
    const-string v0, "ActivityMainComments"

    const-string v1, "[ActivityMainComments][onCreate]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onCreate(Landroid/os/Bundle;)V

    .line 94
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onCreate()V

    .line 96
    const/16 v0, 0x4ee9

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mUIState:I

    .line 97
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 98
    sget-object v0, Lcom/htc/album/helper/UserProfilingLog$PROFILE;->SOCIAL_SERVICE_FEATURES:Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    const-string v1, "comments"

    invoke-static {v0, v1}, Lcom/htc/album/helper/UserProfilingLog;->logUserAccessCount(Lcom/htc/album/helper/UserProfilingLog$PROFILE;Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->initDataPlugin(Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;)V

    .line 100
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onDestroy()V

    .line 120
    const-string v0, "ActivityMainComments"

    const-string v1, "[ActivityMainComments][onDestroy]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/16 v0, 0x4eee

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mUIState:I

    .line 122
    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->setUIHandler(Landroid/os/Handler;)V

    .line 124
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDestroy()V

    .line 127
    iput-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpUser:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpUser:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 133
    iput-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpUser:Landroid/graphics/Bitmap;

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 138
    iput-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhoto:Landroid/graphics/Bitmap;

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhotoFull:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 142
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhotoFull:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 143
    iput-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhotoFull:Landroid/graphics/Bitmap;

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhotoDefault:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 147
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhotoDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 148
    iput-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhotoDefault:Landroid/graphics/Bitmap;

    .line 150
    :cond_4
    return-void
.end method

.method public onErrorNoActiveUser()V
    .locals 3

    .prologue
    .line 541
    const-string v0, "ActivityMainComments"

    const-string v1, "[ActivityMainComments][onErrorNoActiveUser]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const/16 v0, 0x2728

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 543
    return-void
.end method

.method public onErrorNoList(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 553
    return-void
.end method

.method public onErrorNoPhotoInfo()V
    .locals 2

    .prologue
    .line 546
    const-string v0, "ActivityMainComments"

    const-string v1, "[ActivityMainComments][onErrorNoPhotoInfo]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    return-void
.end method

.method public onListHeaderClick(Landroid/view/View;)V
    .locals 5
    .parameter "arg0"

    .prologue
    .line 203
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    if-nez v1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    instance-of v1, v1, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;

    if-eqz v1, :cond_2

    .line 208
    const-string v1, "ActivityMainComments"

    const-string v2, "[ActivityMainComments][onListHeaderClick]: listCommentItemClick"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v0, Lcom/htc/opensense/album/plugin/PersonData;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getBuddyIconURL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/opensense/album/plugin/PersonData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .local v0, person:Lcom/htc/opensense/album/plugin/PersonData;
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    check-cast v1, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;

    invoke-virtual {v1, v0}, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;->listCommentItemClick(Lcom/htc/opensense/album/plugin/PersonData;)V

    goto :goto_0

    .line 214
    .end local v0           #person:Lcom/htc/opensense/album/plugin/PersonData;
    :cond_2
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getBuddyIconURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HelperUtil;->gotoFacebookProfileTab(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v0, 0x0

    .line 173
    .local v0, cacheComment:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getCommentCacher()Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    move-result-object v2

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cacheComment:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;

    .line 174
    .restart local v0       #cacheComment:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 176
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    instance-of v2, v2, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;

    if-eqz v2, :cond_1

    .line 178
    const-string v2, "ActivityMainComments"

    const-string v3, "[ActivityMainComments][onListItemClick]: listCommentItemClick"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v1, Lcom/htc/opensense/album/plugin/PersonData;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getOwnerID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getOwnerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getOwnerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getOwnerAvatarURL()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/htc/opensense/album/plugin/PersonData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .local v1, person:Lcom/htc/opensense/album/plugin/PersonData;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    check-cast v2, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;

    invoke-virtual {v2, v1}, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;->listCommentItemClick(Lcom/htc/opensense/album/plugin/PersonData;)V

    .line 200
    .end local v1           #person:Lcom/htc/opensense/album/plugin/PersonData;
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    const-string v2, "ActivityMainComments"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ActivityMainComments][onListItemClick]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    if-eqz p3, :cond_0

    .line 192
    if-eqz v0, :cond_0

    .line 194
    const-string v2, "ActivityMainComments"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ActivityMainComments][onListItemClick]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getOwnerID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getOwnerID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getOwnerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getOwnerAvatarURL()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HelperUtil;->gotoFacebookProfileTab(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/16 v2, 0x2738

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 557
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 606
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onMessageHandler(Landroid/os/Message;)V

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 560
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onRequestActiveUser()V

    goto :goto_0

    .line 563
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onRequestCommentList(Landroid/os/Message;)V

    goto :goto_0

    .line 566
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onSyncConnection()V

    goto :goto_0

    .line 569
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onSyncActiveUser()V

    goto :goto_0

    .line 572
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onSyncPhotoInfo(Landroid/os/Message;)V

    goto :goto_0

    .line 575
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onSyncPhoto(Landroid/os/Message;)V

    goto :goto_0

    .line 578
    :sswitch_6
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0

    .line 584
    :sswitch_7
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onErrorNoActiveUser()V

    goto :goto_0

    .line 587
    :sswitch_8
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onErrorNoPhotoInfo()V

    goto :goto_0

    .line 593
    :sswitch_9
    invoke-virtual {p0, v2, v1, v3}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 596
    :sswitch_a
    invoke-virtual {p0, v2, v1, v3}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 599
    :sswitch_b
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mLoadingText:Ljava/lang/String;

    .line 600
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onMessageHandler(Landroid/os/Message;)V

    goto :goto_0

    .line 603
    :sswitch_c
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onListHeaderClick(Landroid/view/View;)V

    goto :goto_0

    .line 557
    nop

    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_b
        0x274f -> :sswitch_9
        0x2750 -> :sswitch_a
        0x2760 -> :sswitch_7
        0x2766 -> :sswitch_8
        0x4e20 -> :sswitch_0
        0x4e26 -> :sswitch_1
        0x4e3f -> :sswitch_c
        0x4e84 -> :sswitch_2
        0x4e85 -> :sswitch_3
        0x4e89 -> :sswitch_5
        0x4e8a -> :sswitch_4
        0x4e90 -> :sswitch_6
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 113
    const-string v0, "ActivityMainComments"

    const-string v1, "[ActivityMainComments][onPause]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onPause()V

    .line 115
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onPause()V

    .line 116
    return-void
.end method

.method public onRequestActiveUser()V
    .locals 3

    .prologue
    .line 299
    const-string v1, "ActivityMainComments"

    const-string v2, "[ActivityMainComments][onRequestActiveUser]: "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mIntent:Landroid/content/Intent;

    const-string v2, "album_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, albumid:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mUserID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getMediaInfo3(Ljava/lang/String;)Z

    .line 305
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    instance-of v1, v1, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/opensense/social/data/Medium;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getMediumInfo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 309
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/opensense/social/data/Medium;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getMediumInfo(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onRequestCommentList(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 312
    const-string v0, "ActivityMainComments"

    const-string v1, "[ActivityMainComments][onRequestCommentList]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getCommentCacher()Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->setCommentPhoto(Lcom/htc/opensense/social/MediumOp;)V

    .line 315
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    const/16 v1, 0x4e26

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 316
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 107
    const-string v0, "ActivityMainComments"

    const-string v1, "[ActivityMainComments][onResume]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onResume()V

    .line 109
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onResume()V

    .line 110
    return-void
.end method

.method public onSyncActiveUser()V
    .locals 4

    .prologue
    .line 378
    const-string v2, "ActivityMainComments"

    const-string v3, "[ActivityMainComments][onSyncActiveUser]: "

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const/16 v2, 0x4eee

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mUIState:I

    if-ne v2, v3, :cond_0

    .line 399
    :goto_0
    return-void

    .line 385
    :cond_0
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedUsers()Ljava/util/List;

    move-result-object v1

    .line 386
    .local v1, personList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 388
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 389
    .local v0, aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    if-eqz v0, :cond_1

    .line 391
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iput-object v0, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 398
    .end local v0           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :cond_1
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->udpateHeaderDataAndCache()V

    goto :goto_0
.end method

.method public onSyncConnection()V
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x4e20

    const/4 v4, 0x1

    const/4 v11, 0x0

    .line 319
    const-string v0, "ActivityMainComments"

    const-string v1, "[ActivityMainComments][onSyncConnection]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mUIState:I

    if-ne v0, v1, :cond_0

    .line 375
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 326
    const/4 v8, 0x0

    .line 327
    .local v8, bUseFileCache:Z
    const/4 v7, 0x0

    .line 328
    .local v7, bIsFromOutSide:Z
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v0, :cond_4

    .line 330
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isEnableCommentCache()Z

    move-result v0

    if-ne v4, v0, :cond_1

    .line 332
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->isFileCacheExist()Z

    move-result v8

    .line 344
    :cond_1
    :goto_1
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "ActivityMainComments"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[ActivityMainComments][onSyncConnection]: from out side: "

    aput-object v2, v1, v11

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, ", use cache: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    :cond_2
    if-nez v8, :cond_5

    .line 347
    invoke-virtual {p0, v5, v6, v11}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 360
    :goto_2
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-nez v0, :cond_3

    .line 362
    new-array v10, v4, [Lcom/htc/opensense/social/data/Medium;

    .line 363
    .local v10, medium:[Lcom/htc/opensense/social/data/Medium;
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v0

    aput-object v0, v10, v11

    .line 364
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getMediumOpFast([Lcom/htc/opensense/social/data/Medium;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/MediumOp;

    iput-object v0, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    .line 367
    .end local v10           #medium:[Lcom/htc/opensense/social/data/Medium;
    :cond_3
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getImageProvider()Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrlThumbnail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getUIHandler()Landroid/os/Handler;

    move-result-object v5

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhoto:Landroid/graphics/Bitmap;

    .line 374
    const/16 v0, 0x4e26

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v11}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 335
    :cond_4
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mIntent:Landroid/content/Intent;

    const-string v1, "from_outside"

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 338
    if-nez v7, :cond_1

    .line 340
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->isFileCacheExist()Z

    move-result v8

    goto/16 :goto_1

    .line 351
    :cond_5
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getCommentHeader()Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    move-result-object v9

    .line 352
    .local v9, commentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;
    if-eqz v9, :cond_6

    .line 354
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->readCommentHeaderCache()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;

    invoke-virtual {v9, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->setCommentHeader(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;)V

    .line 356
    :cond_6
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onSyncCommentHeader()V

    .line 357
    invoke-virtual {p0, v5, v6, v11}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_2
.end method

.method public onSyncPhoto(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    .line 478
    const-string v0, "ActivityMainComments"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ActivityMainComments][onSyncPhoto]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mUIState:I

    if-ne v0, v1, :cond_1

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 488
    const-string v0, "ActivityMainComments"

    const-string v1, "[ActivityMainComments][onSyncPhoto]: By bundle..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/Bundle;

    .line 490
    .local v7, bundle:Landroid/os/Bundle;
    const-string v0, "index_id"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 492
    .local v9, nIndex:I
    const/4 v0, -0x2

    if-ne v0, v9, :cond_2

    .line 494
    const-string v0, "ActivityMainComments"

    const-string v1, "[ActivityMainComments][onSyncPhoto]: thumb: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getImageProvider()Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrlThumbnail()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getUIHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhoto:Landroid/graphics/Bitmap;

    .line 502
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getCommentHeader()Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    move-result-object v8

    .line 503
    .local v8, commentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;
    if-eqz v8, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 505
    const-string v0, "ActivityMainComments"

    const-string v1, "[ActivityMainComments][onSyncPhoto]: thumb ready... "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 507
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getImageProvider()Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x3

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getUIHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 516
    .end local v8           #commentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;
    :cond_2
    const/4 v0, -0x3

    if-ne v0, v9, :cond_0

    .line 518
    const-string v0, "ActivityMainComments"

    const-string v1, "[ActivityMainComments][onSyncPhoto]: full: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getImageProvider()Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x3

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getUIHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhotoFull:Landroid/graphics/Bitmap;

    .line 526
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getCommentHeader()Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    move-result-object v8

    .line 527
    .restart local v8       #commentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;
    if-eqz v8, :cond_3

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhotoFull:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 529
    const-string v0, "ActivityMainComments"

    const-string v1, "[ActivityMainComments][onSyncPhoto]: full ready... "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhotoFull:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 533
    :cond_3
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    const/16 v1, 0x4e89

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_0
.end method

.method public onSyncPhotoInfo(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 402
    const-string v0, "ActivityMainComments"

    const-string v1, "[ActivityMainComments][onSyncPhotoInfo]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mUIState:I

    if-ne v0, v1, :cond_0

    .line 412
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 408
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    iput-object v0, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 411
    :cond_1
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->udpateHeaderDataAndCache()V

    goto :goto_0
.end method

.method public setActivityTitle()V
    .locals 0

    .prologue
    .line 295
    return-void
.end method

.method public syncExternalRequest()V
    .locals 4

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    new-instance v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mIntent:Landroid/content/Intent;

    const-string v3, "photo_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/data/Medium;

    invoke-direct {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/data/Medium;)V

    iput-object v2, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 232
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mIntent:Landroid/content/Intent;

    const-string v2, "album_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mIntent:Landroid/content/Intent;

    const-string v2, "service_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mIntent:Landroid/content/Intent;

    const-string v2, "user_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mUserID:Ljava/lang/String;

    .line 236
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 238
    const-string v0, "ActivityMainComments"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ActivityMainComments][setHeaderView]: photoID:     "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v0, "ActivityMainComments"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ActivityMainComments][setHeaderView]: userID:       "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mUserID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v0, "ActivityMainComments"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ActivityMainComments][setHeaderView]: service:       "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_1
    return-void
.end method
