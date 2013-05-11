.class public Lcom/htc/album/helper/ShareMenuManager;
.super Ljava/lang/Object;
.source "ShareMenuManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final SHARE_VIA_MIN:I = 0x4

.field private static mShareMultipleAdapter:Lcom/htc/widget/HtcShareViaMultipleAdapter;


# instance fields
.field mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

.field private mSharePluginButtonId:I

.field private mSharePluginFooterBtn:Lcom/htc/album/modules/ui/widget/FooterButton;

.field private mSharePluginList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/album/plugin/CommandBarButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/album/helper/ShareMenuManager;->mShareMultipleAdapter:Lcom/htc/widget/HtcShareViaMultipleAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v1, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/helper/ShareMenuManager;->mSharePluginButtonId:I

    .line 59
    iput-object v1, p0, Lcom/htc/album/helper/ShareMenuManager;->mSharePluginFooterBtn:Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 60
    iput-object v1, p0, Lcom/htc/album/helper/ShareMenuManager;->mSharePluginList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static createLocalFolderShareList(Landroid/content/Context;IIZ)Ljava/util/ArrayList;
    .locals 53
    .parameter "context"
    .parameter "shareImagesCount"
    .parameter "shareVideosCount"
    .parameter "allDRM"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    if-nez p0, :cond_0

    .line 382
    sget-object v50, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v51, "[createLocalFolderShareList] Null context"

    invoke-static/range {v50 .. v51}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const/16 v18, 0x0

    .line 716
    :goto_0
    return-object v18

    .line 390
    :cond_0
    sget-object v50, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v51, "[createLocalFolderShareList]: Begin"

    invoke-static/range {v50 .. v51}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    if-gtz p1, :cond_1

    if-gtz p2, :cond_1

    .line 394
    sget-object v50, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v51, "[createLocalFolderShareList]: Nothing to share!!"

    invoke-static/range {v50 .. v51}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const/16 v18, 0x0

    goto :goto_0

    .line 399
    :cond_1
    new-instance v18, Ljava/util/ArrayList;

    const/16 v50, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v50

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 400
    .local v18, mergedComparableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v31

    .line 402
    .local v31, pm:Landroid/content/pm/PackageManager;
    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v44, shareIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v19, Landroid/content/Intent;

    const-string v50, "com.htc.intent.action.SEND_MSG"

    move-object/from16 v0, v19

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 406
    .local v19, msgIntent:Landroid/content/Intent;
    const-string v50, "image/*"

    move-object/from16 v0, v19

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const-string v50, "video/*"

    move-object/from16 v0, v19

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    const/high16 v50, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v46

    .line 409
    .local v46, tmpList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v50, "com.htc.intent.action.SEND_MSG"

    const v51, 0x10003

    move-object/from16 v0, v18

    move-object/from16 v1, v46

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 412
    move-object/from16 v0, v44

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    new-instance v42, Landroid/content/Intent;

    const-string v50, "com.htc.vmm.SEND"

    move-object/from16 v0, v42

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 416
    .local v42, sendVMMVideoIntent:Landroid/content/Intent;
    const-string v50, "video/*"

    move-object/from16 v0, v42

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    new-instance v39, Landroid/content/Intent;

    const-string v50, "com.htc.vmm.SEND"

    move-object/from16 v0, v39

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 419
    .local v39, sendVMMImageIntent:Landroid/content/Intent;
    const-string v50, "image/*"

    move-object/from16 v0, v39

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    new-instance v41, Landroid/content/Intent;

    const-string v50, "com.htc.vmm.SEND_MULTIPLE"

    move-object/from16 v0, v41

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    .local v41, sendVMMMultipleVideoIntent:Landroid/content/Intent;
    const-string v50, "video/*"

    move-object/from16 v0, v41

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    new-instance v40, Landroid/content/Intent;

    const-string v50, "com.htc.vmm.SEND_MULTIPLE"

    move-object/from16 v0, v40

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 425
    .local v40, sendVMMMultipleImageIntent:Landroid/content/Intent;
    const-string v50, "image/*"

    move-object/from16 v0, v40

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    new-instance v43, Landroid/content/Intent;

    const-string v50, "android.intent.action.SEND"

    move-object/from16 v0, v43

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    .local v43, sendVideoIntent:Landroid/content/Intent;
    const-string v50, "video/*"

    move-object/from16 v0, v43

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    new-instance v34, Landroid/content/Intent;

    const-string v50, "android.intent.action.SEND"

    move-object/from16 v0, v34

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    .local v34, sendImageIntent:Landroid/content/Intent;
    const-string v50, "image/*"

    move-object/from16 v0, v34

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    new-instance v36, Landroid/content/Intent;

    const-string v50, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v36

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    .local v36, sendMultipleImageIntent_android:Landroid/content/Intent;
    const-string v50, "image/*"

    move-object/from16 v0, v36

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    new-instance v38, Landroid/content/Intent;

    const-string v50, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v38

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    .local v38, sendMultipleVideoIntent_android:Landroid/content/Intent;
    const-string v50, "video/*"

    move-object/from16 v0, v38

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    new-instance v35, Landroid/content/Intent;

    const-string v50, "htc.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v35

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 441
    .local v35, sendMultipleImageIntent:Landroid/content/Intent;
    const-string v50, "image/*"

    move-object/from16 v0, v35

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    new-instance v37, Landroid/content/Intent;

    const-string v50, "htc.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v37

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    .local v37, sendMultipleVideoIntent:Landroid/content/Intent;
    const-string v50, "video/*"

    move-object/from16 v0, v37

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    const/high16 v50, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v39

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v16

    .line 448
    .local v16, imageVMMList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v50, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v42

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v49

    .line 449
    .local v49, videoVMMList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v50, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v24

    .line 450
    .local v24, multiImageVMMList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v50, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v41

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v29

    .line 452
    .local v29, multiVideoVMMList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v50, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    .line 454
    .local v14, imageList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v50, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v43

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v47

    .line 457
    .local v47, videoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v50, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v21

    .line 460
    .local v21, multiImageList_android:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v50, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v26

    .line 462
    .local v26, multiVideoList_android:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v50, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v20

    .line 464
    .local v20, multiImageList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v50, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v37

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v25

    .line 468
    .local v25, multiVideoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v6, 0x0

    .line 469
    .local v6, IMAGE_FOLDER:I
    const/16 v8, 0xa

    .line 470
    .local v8, VIDEO_FOLDER:I
    const/16 v7, 0x1e

    .line 483
    .local v7, MIXED_FOLDER:I
    const/4 v5, -0x1

    .line 487
    .local v5, FOLDER_TYPE:I
    if-gtz p1, :cond_5

    .line 489
    const-string v50, "android.intent.action.SEND"

    const v51, 0x10002

    move-object/from16 v0, v18

    move-object/from16 v1, v47

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 491
    const-string v50, "android.intent.action.SEND_MULTIPLE"

    const v51, 0x20002

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 493
    const-string v50, "htc.intent.action.SEND_MULTIPLE"

    const v51, 0x20002

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 496
    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    move-object/from16 v0, v44

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    move-object/from16 v0, v44

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    const-string v50, "com.htc.vmm.SEND"

    const v51, 0x10002

    move-object/from16 v0, v18

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 503
    const-string v50, "com.htc.vmm.SEND_MULTIPLE"

    const v51, 0x20002

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 505
    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    move-object/from16 v0, v44

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    const/16 v5, 0xa

    .line 575
    :goto_1
    const/16 v50, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v18

    move-object/from16 v3, v44

    invoke-static {v0, v1, v2, v3}, Lcom/htc/album/helper/ShareMenuManager;->searchMMSMediaProxyShareItem(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/ArrayList;Ljava/util/List;)Z

    .line 578
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 579
    .local v10, allowPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p3, :cond_2

    .line 580
    move-object/from16 v0, v18

    invoke-static {v0, v10}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutItemsExceptMailAndMMSAndBT(Ljava/util/List;Ljava/util/List;)V

    .line 586
    :cond_2
    invoke-static/range {v18 .. v18}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutDuplicateItems(Ljava/util/List;)V

    .line 588
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 589
    .local v11, excludePackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v50, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_MMS:Z

    if-eqz v50, :cond_3

    .line 590
    move-object/from16 v0, v18

    invoke-static {v0, v11}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutMMSItems(Ljava/util/List;Ljava/util/List;)V

    .line 593
    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 595
    .local v17, info:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const/16 v45, 0x0

    .line 597
    .local v45, szLabel:Ljava/lang/String;
    if-eqz v17, :cond_4

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v45

    if-eqz v45, :cond_4

    .line 600
    sget-object v50, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "[HTCAlbum][ShareMenuManager][createLocalFolderShareList]:3 "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 511
    .end local v10           #allowPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v11           #excludePackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v17           #info:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    .end local v45           #szLabel:Ljava/lang/String;
    :cond_5
    if-gtz p2, :cond_6

    .line 513
    const-string v50, "android.intent.action.SEND"

    const v51, 0x10001

    move-object/from16 v0, v18

    move-object/from16 v1, v50

    move-object/from16 v2, p0

    move/from16 v3, v51

    invoke-static {v0, v14, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 515
    const-string v50, "android.intent.action.SEND_MULTIPLE"

    const v51, 0x20001

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 517
    const-string v50, "htc.intent.action.SEND_MULTIPLE"

    const v51, 0x20001

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 520
    move-object/from16 v0, v44

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    move-object/from16 v0, v44

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    move-object/from16 v0, v44

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    const-string v50, "com.htc.vmm.SEND"

    const v51, 0x10001

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 527
    const-string v50, "com.htc.vmm.SEND_MULTIPLE"

    const v51, 0x20001

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 529
    move-object/from16 v0, v44

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    move-object/from16 v0, v44

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 537
    :cond_6
    const-string v50, "android.intent.action.SEND"

    const v51, 0x10002

    move-object/from16 v0, v18

    move-object/from16 v1, v47

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 540
    const-string v50, "android.intent.action.SEND"

    const v51, 0x10001

    move-object/from16 v0, v18

    move-object/from16 v1, v50

    move-object/from16 v2, p0

    move/from16 v3, v51

    invoke-static {v0, v14, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 543
    const-string v50, "android.intent.action.SEND_MULTIPLE"

    const v51, 0x20002

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 545
    const-string v50, "android.intent.action.SEND_MULTIPLE"

    const v51, 0x20001

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 547
    const-string v50, "htc.intent.action.SEND_MULTIPLE"

    const v51, 0x20002

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 549
    const-string v50, "htc.intent.action.SEND_MULTIPLE"

    const v51, 0x20001

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 552
    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    move-object/from16 v0, v44

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    move-object/from16 v0, v44

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    move-object/from16 v0, v44

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    move-object/from16 v0, v44

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    move-object/from16 v0, v44

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    const-string v50, "com.htc.vmm.SEND"

    const v51, 0x10002

    move-object/from16 v0, v18

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 562
    const-string v50, "com.htc.vmm.SEND_MULTIPLE"

    const v51, 0x20002

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 563
    const-string v50, "com.htc.vmm.SEND"

    const v51, 0x10001

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 564
    const-string v50, "com.htc.vmm.SEND_MULTIPLE"

    const v51, 0x20001

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v50

    move-object/from16 v3, p0

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 566
    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    move-object/from16 v0, v44

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    move-object/from16 v0, v44

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    move-object/from16 v0, v44

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    const/16 v5, 0x1e

    goto/16 :goto_1

    .line 603
    .restart local v10       #allowPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11       #excludePackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_7
    move-object/from16 v0, v18

    invoke-static {v0, v11}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutDisabledItems(Ljava/util/List;Ljava/util/List;)V

    .line 608
    sparse-switch v5, :sswitch_data_0

    .line 712
    :goto_3
    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-static {v0, v10, v11, v1}, Lcom/htc/album/helper/ShareMenuManager;->createShareMultipleAdapterInstance(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/content/Context;)V

    .line 714
    sget-object v50, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v51, "[createLocalFolderShareList]: Ends"

    invoke-static/range {v50 .. v51}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 612
    :sswitch_0
    sget-object v50, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v51, "[createLocalFolderShareList]: Image/Video Folder"

    invoke-static/range {v50 .. v51}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 615
    :sswitch_1
    sget-object v50, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v51, "[createLocalFolderShareList]: Mixed Folder"

    invoke-static/range {v50 .. v51}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 622
    .local v15, imageMap:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v48, Ljava/util/HashSet;

    invoke-direct/range {v48 .. v48}, Ljava/util/HashSet;-><init>()V

    .line 623
    .local v48, videoMap:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    .line 624
    .local v23, multiImageMap_android:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v28, Ljava/util/HashSet;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashSet;-><init>()V

    .line 625
    .local v28, multiVideoMap_android:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    .line 626
    .local v22, multiImageMap:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v27, Ljava/util/HashSet;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashSet;-><init>()V

    .line 628
    .local v27, multiVideoMap:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/ResolveInfo;

    .line 629
    .local v33, rs:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 630
    .end local v33           #rs:Landroid/content/pm/ResolveInfo;
    :cond_8
    invoke-interface/range {v49 .. v49}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/ResolveInfo;

    .line 631
    .restart local v33       #rs:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 632
    .end local v33           #rs:Landroid/content/pm/ResolveInfo;
    :cond_9
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/ResolveInfo;

    .line 633
    .restart local v33       #rs:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 634
    .end local v33           #rs:Landroid/content/pm/ResolveInfo;
    :cond_a
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/ResolveInfo;

    .line 635
    .restart local v33       #rs:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 636
    .end local v33           #rs:Landroid/content/pm/ResolveInfo;
    :cond_b
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/ResolveInfo;

    .line 637
    .restart local v33       #rs:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 638
    .end local v33           #rs:Landroid/content/pm/ResolveInfo;
    :cond_c
    invoke-interface/range {v47 .. v47}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/ResolveInfo;

    .line 639
    .restart local v33       #rs:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 640
    .end local v33           #rs:Landroid/content/pm/ResolveInfo;
    :cond_d
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/ResolveInfo;

    .line 641
    .restart local v33       #rs:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 642
    .end local v33           #rs:Landroid/content/pm/ResolveInfo;
    :cond_e
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/ResolveInfo;

    .line 643
    .restart local v33       #rs:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 644
    .end local v33           #rs:Landroid/content/pm/ResolveInfo;
    :cond_f
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/ResolveInfo;

    .line 645
    .restart local v33       #rs:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 646
    .end local v33           #rs:Landroid/content/pm/ResolveInfo;
    :cond_10
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_11

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/ResolveInfo;

    .line 647
    .restart local v33       #rs:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 649
    .end local v33           #rs:Landroid/content/pm/ResolveInfo;
    :cond_11
    const/4 v12, 0x0

    .local v12, i:I
    :goto_e
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v50

    move/from16 v0, v50

    if-ge v12, v0, :cond_1c

    .line 651
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 652
    .local v32, ri:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-interface/range {v32 .. v32}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v50

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 653
    .local v9, aiName:Ljava/lang/String;
    invoke-interface/range {v32 .. v32}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v50

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 655
    .local v30, packageName:Ljava/lang/String;
    const-string v50, "com.htc.android.mail"

    move-object/from16 v0, v50

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_12

    .line 657
    const v50, 0x20003

    move-object/from16 v0, v32

    move/from16 v1, v50

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    .line 649
    :goto_f
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    .line 660
    :cond_12
    const-string v50, "com.android.mms"

    move-object/from16 v0, v50

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_13

    .line 662
    const v50, 0x10003

    move-object/from16 v0, v32

    move/from16 v1, v50

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto :goto_f

    .line 666
    :cond_13
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_15

    .line 668
    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_14

    .line 669
    const v50, 0x20003

    move-object/from16 v0, v32

    move/from16 v1, v50

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto :goto_f

    .line 671
    :cond_14
    const v50, 0x20001

    move-object/from16 v0, v32

    move/from16 v1, v50

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto :goto_f

    .line 674
    :cond_15
    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_16

    .line 676
    const v50, 0x20002

    move-object/from16 v0, v32

    move/from16 v1, v50

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto :goto_f

    .line 679
    :cond_16
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_18

    .line 681
    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_17

    .line 682
    const v50, 0x20003

    move-object/from16 v0, v32

    move/from16 v1, v50

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto :goto_f

    .line 684
    :cond_17
    const v50, 0x20001

    move-object/from16 v0, v32

    move/from16 v1, v50

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto :goto_f

    .line 687
    :cond_18
    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_19

    .line 689
    const v50, 0x20002

    move-object/from16 v0, v32

    move/from16 v1, v50

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto/16 :goto_f

    .line 692
    :cond_19
    invoke-virtual {v15, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_1b

    .line 694
    move-object/from16 v0, v48

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_1a

    .line 695
    const v50, 0x10003

    move-object/from16 v0, v32

    move/from16 v1, v50

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto/16 :goto_f

    .line 697
    :cond_1a
    const v50, 0x10001

    move-object/from16 v0, v32

    move/from16 v1, v50

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto/16 :goto_f

    .line 701
    :cond_1b
    const v50, 0x10002

    move-object/from16 v0, v32

    move/from16 v1, v50

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto/16 :goto_f

    .line 707
    .end local v9           #aiName:Ljava/lang/String;
    .end local v30           #packageName:Ljava/lang/String;
    .end local v32           #ri:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_1c
    invoke-static/range {v18 .. v18}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutItemsByGroupMerge(Ljava/util/List;)V

    goto/16 :goto_3

    .line 608
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_0
        0x1e -> :sswitch_1
    .end sparse-switch
.end method

.method public static createLocalSingleShareList(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)Ljava/util/ArrayList;
    .locals 22
    .parameter "context"
    .parameter "targetImage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    if-nez p0, :cond_1

    .line 189
    sget-object v19, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v20, "[createLocalSingleShareList] null context"

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/4 v11, 0x0

    .line 300
    :cond_0
    :goto_0
    return-object v11

    .line 193
    :cond_1
    move-object/from16 v5, p1

    .line 194
    .local v5, curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v5, :cond_2

    .line 196
    sget-object v19, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v20, "[createLocalSingleShareList] null image found!!"

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const/4 v11, 0x0

    goto :goto_0

    .line 201
    :cond_2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v11, mergedComparableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 204
    .local v13, pm:Landroid/content/pm/PackageManager;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v15, shareIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v9, Landroid/content/Intent;

    const-string v19, "com.htc.vmm.SEND"

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v9, intent:Landroid/content/Intent;
    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v10

    .line 211
    .local v10, isVideo:Z
    if-eqz v10, :cond_6

    .line 212
    const-string v19, "video/*"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    :goto_1
    const/high16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v9, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v18

    .line 216
    .local v18, tmpList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v20, "com.htc.vmm.SEND"

    if-eqz v10, :cond_7

    const v19, 0x10002

    :goto_2
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, v19

    invoke-static {v11, v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 218
    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance v14, Landroid/content/Intent;

    const-string v19, "android.intent.action.SEND"

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v14, sendIntent:Landroid/content/Intent;
    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 227
    const-string v19, "video/*"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    :goto_3
    new-instance v12, Landroid/content/Intent;

    const-string v19, "com.htc.intent.action.SEND_MSG"

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .local v12, msgIntent:Landroid/content/Intent;
    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 237
    const-string v19, "video/*"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    :goto_4
    const/high16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v14, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v18

    .line 248
    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v19

    if-eqz v19, :cond_a

    const v16, 0x10002

    .line 250
    .local v16, shareType:I
    :goto_5
    const-string v19, "android.intent.action.SEND"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move/from16 v3, v16

    invoke-static {v11, v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 252
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    const/high16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v12, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v18

    .line 258
    const-string v19, "com.htc.intent.action.SEND_MSG"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move/from16 v3, v16

    invoke-static {v11, v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 261
    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    move-object/from16 v0, p0

    invoke-static {v0, v5, v11, v15}, Lcom/htc/album/helper/ShareMenuManager;->searchMMSMediaProxyShareItem(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/ArrayList;Ljava/util/List;)Z

    .line 266
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v4, allowPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 268
    invoke-static {v11, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutItemsExceptMailAndMMSAndBT(Ljava/util/List;Ljava/util/List;)V

    .line 272
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v6, excludePackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v19, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_MMS:Z

    if-eqz v19, :cond_4

    .line 274
    invoke-static {v11, v6}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutMMSItems(Ljava/util/List;Ljava/util/List;)V

    .line 277
    :cond_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_5
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 279
    .local v8, info:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const/16 v17, 0x0

    .line 281
    .local v17, szLabel:Ljava/lang/String;
    if-eqz v8, :cond_5

    invoke-interface {v8}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_5

    .line 284
    sget-object v19, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[createLocalSingleShareList]: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 214
    .end local v4           #allowPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #excludePackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #info:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    .end local v12           #msgIntent:Landroid/content/Intent;
    .end local v14           #sendIntent:Landroid/content/Intent;
    .end local v16           #shareType:I
    .end local v17           #szLabel:Ljava/lang/String;
    .end local v18           #tmpList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_6
    const-string v19, "image/*"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 216
    .restart local v18       #tmpList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_7
    const v19, 0x10001

    goto/16 :goto_2

    .line 231
    .restart local v14       #sendIntent:Landroid/content/Intent;
    :cond_8
    const-string v19, "image/*"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 241
    .restart local v12       #msgIntent:Landroid/content/Intent;
    :cond_9
    const-string v19, "image/*"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_4

    .line 248
    :cond_a
    const v16, 0x10001

    goto/16 :goto_5

    .line 286
    .restart local v4       #allowPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #excludePackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v16       #shareType:I
    :cond_b
    invoke-static {v11, v6}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutDisabledItems(Ljava/util/List;Ljava/util/List;)V

    .line 288
    move-object/from16 v0, p0

    invoke-static {v15, v4, v6, v0}, Lcom/htc/album/helper/ShareMenuManager;->createShareMultipleAdapterInstance(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/content/Context;)V

    .line 291
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-gtz v19, :cond_0

    .line 297
    const v19, 0x7f0a000d

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    .line 300
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method private static createShareMultipleAdapterInstance(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/content/Context;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, intents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .local p1, allows:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, excludes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v8, 0x20

    .line 911
    sget-boolean v5, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v5, :cond_5

    .line 912
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 913
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 914
    .local v4, strBuf:Ljava/lang/StringBuffer;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 915
    .local v2, i:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 917
    .end local v2           #i:Landroid/content/Intent;
    :cond_0
    sget-object v5, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[createShareMultipleAdapterInstance] Intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #strBuf:Ljava/lang/StringBuffer;
    :cond_1
    if-eqz p1, :cond_3

    .line 921
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 922
    .restart local v4       #strBuf:Ljava/lang/StringBuffer;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 923
    .local v0, allow:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 925
    .end local v0           #allow:Ljava/lang/String;
    :cond_2
    sget-object v5, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[createShareMultipleAdapterInstance] Allow: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #strBuf:Ljava/lang/StringBuffer;
    :cond_3
    if-eqz p2, :cond_5

    .line 929
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 930
    .restart local v4       #strBuf:Ljava/lang/StringBuffer;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 931
    .local v1, exclude:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 933
    .end local v1           #exclude:Ljava/lang/String;
    :cond_4
    sget-object v5, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[createShareMultipleAdapterInstance] Exclude: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #strBuf:Ljava/lang/StringBuffer;
    :cond_5
    new-instance v5, Lcom/htc/widget/HtcShareViaMultipleAdapter;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/htc/widget/HtcShareViaMultipleAdapter;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/content/Context;)V

    sput-object v5, Lcom/htc/album/helper/ShareMenuManager;->mShareMultipleAdapter:Lcom/htc/widget/HtcShareViaMultipleAdapter;

    .line 937
    return-void
.end method

.method public static createSocialShareList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 807
    if-nez p0, :cond_0

    .line 834
    :goto_0
    return-object v3

    .line 810
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 811
    .local v2, intentText:Landroid/content/Intent;
    const-string v5, "text/plain"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 818
    const/4 v3, 0x0

    .line 820
    .local v3, orderComparableList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v6, 0x1

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 821
    .local v4, shareList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v5, "android.intent.action.SEND"

    const v6, 0x10003

    invoke-static {v4, v5, p0, v6}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->makeComparableRIList(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Ljava/util/List;

    move-result-object v3

    .line 823
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 824
    .local v1, intent:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v1, v5, v6, p0}, Lcom/htc/album/helper/ShareMenuManager;->createShareMultipleAdapterInstance(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 834
    .end local v1           #intent:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .end local v4           #shareList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_1
    check-cast v3, Ljava/util/ArrayList;

    goto :goto_0

    .line 826
    :catch_0
    move-exception v0

    .line 827
    .local v0, e:Ljava/lang/RuntimeException;
    sget-object v5, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ShareMenuManager][createSocialShareList] RuntimeException :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const/4 v3, 0x0

    .line 832
    goto :goto_1

    .line 829
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 830
    .local v0, e:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ShareMenuManager][createSocialShareList] Exception :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private doCreateBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;Ljava/util/ArrayList;)Z
    .locals 6
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, shareBtn:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    .local p3, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 139
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v3, v4

    .line 163
    :cond_1
    :goto_0
    return v3

    .line 142
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 144
    :cond_3
    sget-object v3, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[createShareSocialMenu] Null share list!!"

    invoke-static {v3, v5}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 145
    goto :goto_0

    .line 148
    :cond_4
    new-instance v4, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-direct {v4, p1, p3, v3}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v4, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    .line 149
    iget-object v4, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-virtual {p2, v4}, Lcom/htc/album/modules/ui/widget/ControlButton;->setSharedAdapter(Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;)V

    .line 151
    invoke-virtual {p2}, Lcom/htc/album/modules/ui/widget/ControlButton;->clearBubble()V

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, item:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_1
    iget-object v4, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->getCount()I

    move-result v4

    if-le v4, v1, :cond_1

    .line 156
    iget-object v4, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-virtual {v4, v1}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #item:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .restart local v0       #item:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    if-nez v0, :cond_5

    .line 154
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 159
    :cond_5
    invoke-interface {v0}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 160
    .local v2, shareIcon:Landroid/graphics/drawable/Drawable;
    invoke-interface {v0}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1, v2, v4}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/htc/album/modules/ui/widget/BubbleButton;

    goto :goto_2
.end method

.method private doCreateDropList(Landroid/content/Context;Landroid/view/SubMenu;ILjava/util/ArrayList;)Z
    .locals 6
    .parameter "context"
    .parameter "shareMenu"
    .parameter "nGroupId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/SubMenu;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p4, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const/4 v2, 0x0

    .line 167
    if-nez p4, :cond_0

    .line 169
    sget-object v3, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[ShareMenuManager][doCreateDropList] The share list is null"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :goto_0
    return v2

    .line 172
    :cond_0
    new-instance v3, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-direct {v3, p1, p4, v2}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v3, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    .line 174
    sget-object v3, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneOnlinePhotoFullscreen][doCreateDropList]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-virtual {v5}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const/4 v1, 0x0

    .line 177
    .local v1, shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v0, :cond_2

    .line 179
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    check-cast v1, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .restart local v1       #shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    if-eqz v1, :cond_1

    .line 180
    invoke-interface {v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, p3, v0, v2, v3}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 177
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 182
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private doCreateMenu(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/Menu;Landroid/view/MenuItem;I)Z
    .locals 10
    .parameter "context"
    .parameter
    .parameter "menu"
    .parameter "menuItem"
    .parameter "groupId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;",
            "Landroid/view/Menu;",
            "Landroid/view/MenuItem;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p2, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 66
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 68
    invoke-interface {p4}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 69
    .local v1, id:I
    if-nez p1, :cond_1

    .line 71
    invoke-interface {p3, p5}, Landroid/view/Menu;->removeGroup(I)V

    .line 72
    invoke-interface {p3, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 132
    .end local v1           #id:I
    :cond_0
    :goto_0
    return v7

    .line 76
    .restart local v1       #id:I
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_3

    .line 78
    :cond_2
    sget-object v8, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[doCreateMenu] Null share list!!"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-interface {p3, p5}, Landroid/view/Menu;->removeGroup(I)V

    .line 80
    invoke-interface {p3, v1}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0

    .line 84
    :cond_3
    new-instance v9, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-direct {v9, p1, p2, v8}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v9, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    .line 86
    invoke-interface {p4}, Landroid/view/MenuItem;->getOrder()I

    move-result v3

    .line 87
    .local v3, order:I
    invoke-interface {p4}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    .line 88
    .local v6, title:Ljava/lang/CharSequence;
    invoke-interface {p3, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 89
    invoke-interface {p3, v7, v1, v3, v6}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v5

    .line 91
    .local v5, subMenu:Landroid/view/SubMenu;
    const/4 v2, 0x0

    .line 92
    .local v2, index:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 94
    .local v4, shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-interface {v4}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, p5, v2, v7, v9}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p4

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 98
    .end local v4           #shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_4
    invoke-interface {p3, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p4

    .line 99
    const/4 v7, 0x2

    invoke-interface {p4, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 100
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Share_Dark_Rest(Landroid/content/Context;)I

    move-result v7

    invoke-interface {p4, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v7, v8

    .line 102
    goto :goto_0

    .line 106
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #id:I
    .end local v2           #index:I
    .end local v3           #order:I
    .end local v5           #subMenu:Landroid/view/SubMenu;
    .end local v6           #title:Ljava/lang/CharSequence;
    :cond_5
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 109
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_7

    .line 111
    :cond_6
    sget-object v8, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[doCreateMenu] Null share list!!"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_7
    new-instance v9, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-direct {v9, p1, p2, v8}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v9, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    .line 117
    invoke-interface {p4}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 118
    .restart local v1       #id:I
    invoke-interface {p4}, Landroid/view/MenuItem;->getOrder()I

    move-result v3

    .line 119
    .restart local v3       #order:I
    invoke-interface {p4}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    .line 120
    .restart local v6       #title:Ljava/lang/CharSequence;
    invoke-interface {p3, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 121
    invoke-interface {p3, v7, v1, v3, v6}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v5

    .line 123
    .restart local v5       #subMenu:Landroid/view/SubMenu;
    const/4 v2, 0x0

    .line 124
    .restart local v2       #index:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 126
    .restart local v4       #shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-interface {v4}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, p5, v2, v7, v9}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p4

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 130
    .end local v4           #shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_8
    invoke-interface {p3, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p4

    move v7, v8

    .line 132
    goto/16 :goto_0
.end method

.method private getOrderPluginComparableList(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 9
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/plugin/CommandBarButton;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/album/plugin/CommandBarButton;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, orderList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p3, mergelist:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    const/4 v7, 0x0

    .line 995
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move-object v3, v7

    .line 1013
    :cond_1
    return-object v3

    .line 998
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1000
    .local v3, orderComparableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1002
    .local v4, orderRI:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    :goto_0
    check-cast v5, Ljava/lang/String;

    .line 1003
    .local v5, srcActName:Ljava/lang/String;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/album/plugin/CommandBarButton;

    .line 1005
    .local v2, info:Lcom/htc/opensense/album/plugin/CommandBarButton;
    invoke-virtual {v2}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonText()Ljava/lang/String;

    move-result-object v6

    .line 1006
    .local v6, tarActName:Ljava/lang/String;
    if-eqz v5, :cond_4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1008
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v5           #srcActName:Ljava/lang/String;
    .end local v6           #tarActName:Ljava/lang/String;
    :cond_5
    move-object v5, v7

    .line 1002
    goto :goto_0
.end method

.method public static getShareItemIndex(ILcom/htc/opensense2/album/SocialNetwork/SharedAdapter;)I
    .locals 4
    .parameter "select"
    .parameter "adapter"

    .prologue
    .line 1069
    move-object v2, p1

    .line 1070
    .local v2, shareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;
    sget-object v3, Lcom/htc/album/helper/ShareMenuManager;->mShareMultipleAdapter:Lcom/htc/widget/HtcShareViaMultipleAdapter;

    .line 1072
    .local v3, shareMultipleAdapter:Lcom/htc/widget/HtcShareViaMultipleAdapter;
    const/4 v0, -0x1

    .line 1073
    .local v0, index:I
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 1076
    invoke-virtual {v3, p0}, Lcom/htc/widget/HtcShareViaMultipleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1077
    .local v1, ri:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v2, v1}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->findShareItemIndex(Landroid/content/pm/ResolveInfo;)I

    move-result v0

    .line 1079
    .end local v1           #ri:Landroid/content/pm/ResolveInfo;
    :cond_0
    return v0
.end method

.method public static declared-synchronized getShareMultipleAdapter()Lcom/htc/widget/HtcShareViaMultipleAdapter;
    .locals 2

    .prologue
    .line 941
    const-class v0, Lcom/htc/album/helper/ShareMenuManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/htc/album/helper/ShareMenuManager;->mShareMultipleAdapter:Lcom/htc/widget/HtcShareViaMultipleAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static searchMMSMediaProxyShareItem(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/ArrayList;Ljava/util/List;)Z
    .locals 10
    .parameter "context"
    .parameter "iImageCurrent"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, listShareTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    .local p3, shareIntent:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    const/high16 v4, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 726
    const/4 v6, 0x0

    .line 727
    .local v6, bResult:Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 734
    .local v7, pm:Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.htc.intent.action.USCSEND"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 735
    .local v8, sendIntent:Landroid/content/Intent;
    if-eqz p1, :cond_2

    .line 737
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v0

    if-ne v3, v0, :cond_1

    .line 738
    const-string v0, "video/*"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 747
    :goto_0
    invoke-virtual {v7, v8, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 748
    .local v9, tmpList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 750
    sget-object v0, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][MenuManager][searchMMSMediaProxyShareItem]: no com.htc.intent.action.USCSEND"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    :cond_0
    :goto_1
    return v5

    .line 740
    .end local v9           #tmpList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    const-string v0, "image/*"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 744
    :cond_2
    const-string v0, "*/*"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 754
    .restart local v9       #tmpList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    sget-object v0, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][MenuManager][searchMMSMediaProxyShareItem]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    sget-object v1, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][MenuManager][searchMMSMediaProxyShareItem]: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    if-eqz p1, :cond_4

    .line 759
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v0

    if-eq v3, v0, :cond_0

    .line 763
    :cond_4
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move-object v0, p2

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addSingleComparableRIList(Ljava/util/List;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/content/Context;II)V

    .line 769
    invoke-interface {p3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public createLocalFolderShareBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;IIZ)Z
    .locals 2
    .parameter "context"
    .parameter
    .parameter "shareImagesCount"
    .parameter "shareVideosCount"
    .parameter "allDRM"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;IIZ)Z"
        }
    .end annotation

    .prologue
    .line 789
    .local p2, shareBtn:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    invoke-static {p1, p3, p4, p5}, Lcom/htc/album/helper/ShareMenuManager;->createLocalFolderShareList(Landroid/content/Context;IIZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 791
    .local v0, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/album/helper/ShareMenuManager;->doCreateBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;Ljava/util/ArrayList;)Z

    move-result v1

    return v1
.end method

.method public createLocalFolderShareMenu(Landroid/content/Context;Landroid/view/Menu;IIZ)Z
    .locals 6
    .parameter "context"
    .parameter "menu"
    .parameter "shareImagesCount"
    .parameter "shareVideosCount"
    .parameter "allDRM"

    .prologue
    .line 776
    const v0, 0x7f09008b

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 777
    .local v4, menuItem:Landroid/view/MenuItem;
    if-nez v4, :cond_0

    .line 779
    sget-object v0, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[createLocalFolderShareMenu] No share menu found!!"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    const/4 v0, 0x0

    .line 785
    :goto_0
    return v0

    .line 783
    :cond_0
    invoke-static {p1, p3, p4, p5}, Lcom/htc/album/helper/ShareMenuManager;->createLocalFolderShareList(Landroid/content/Context;IIZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 785
    .local v2, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const/16 v5, 0x303a

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/helper/ShareMenuManager;->doCreateMenu(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/Menu;Landroid/view/MenuItem;I)Z

    move-result v0

    goto :goto_0
.end method

.method public createLocalSingleShareBubble(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/modules/ui/widget/ControlButton;)Z
    .locals 3
    .parameter "context"
    .parameter "targetImage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 324
    .local p3, shareBtn:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 326
    :cond_0
    sget-object v1, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[createLocalSingleShareBubble] Invalid inputs!!"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const/4 v1, 0x0

    .line 331
    :goto_0
    return v1

    .line 330
    :cond_1
    invoke-static {p1, p2}, Lcom/htc/album/helper/ShareMenuManager;->createLocalSingleShareList(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)Ljava/util/ArrayList;

    move-result-object v0

    .line 331
    .local v0, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    invoke-direct {p0, p1, p3, v0}, Lcom/htc/album/helper/ShareMenuManager;->doCreateBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;Ljava/util/ArrayList;)Z

    move-result v1

    goto :goto_0
.end method

.method public createLocalSingleShareMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Landroid/view/Menu;)Z
    .locals 6
    .parameter "context"
    .parameter "targetImage"
    .parameter "menu"

    .prologue
    const/4 v0, 0x0

    .line 305
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 307
    :cond_0
    sget-object v1, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[createLocalSingleShareMenu] Invalid inputs!!"

    invoke-static {v1, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :goto_0
    return v0

    .line 311
    :cond_1
    const v1, 0x7f09008b

    invoke-interface {p3, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 312
    .local v4, menuItem:Landroid/view/MenuItem;
    if-nez v4, :cond_2

    .line 314
    sget-object v1, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[createLocalSingleShareMenu] No share menu found!!"

    invoke-static {v1, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :cond_2
    invoke-static {p1, p2}, Lcom/htc/album/helper/ShareMenuManager;->createLocalSingleShareList(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)Ljava/util/ArrayList;

    move-result-object v2

    .line 319
    .local v2, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const/16 v5, 0x3039

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/helper/ShareMenuManager;->doCreateMenu(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/Menu;Landroid/view/MenuItem;I)Z

    move-result v0

    goto :goto_0
.end method

.method public createSocialPluginShareList(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 9
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/album/plugin/CommandBarButton;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 953
    .local p2, shareBtnSubList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    if-nez p1, :cond_1

    .line 991
    :cond_0
    :goto_0
    return-void

    .line 956
    :cond_1
    const/4 v5, 0x0

    .line 957
    .local v5, orderList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    .line 958
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    const/4 v0, 0x0

    .line 960
    .local v0, criList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 961
    .local v3, intentText:Landroid/content/Intent;
    const-string v6, "text/plain"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 969
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/high16 v7, 0x1

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 970
    const-string v6, "android.intent.action.SEND"

    const v7, 0x10003

    invoke-static {v5, v6, p1, v7}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->makeComparableRIList(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 971
    iget-object v6, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    if-nez v6, :cond_2

    .line 972
    new-instance v6, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    const/4 v7, 0x1

    invoke-direct {v6, p1, v0, v7}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v6, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    .line 974
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 975
    .local v2, intent:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 976
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v6, v7, p1}, Lcom/htc/album/helper/ShareMenuManager;->createShareMultipleAdapterInstance(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 985
    .end local v2           #intent:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    :goto_1
    if-eqz p2, :cond_3

    .line 986
    invoke-direct {p0, p1, v5, p2}, Lcom/htc/album/helper/ShareMenuManager;->getOrderPluginComparableList(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    .line 989
    :goto_2
    if-eqz v4, :cond_0

    .line 990
    check-cast v4, Ljava/util/ArrayList;

    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    iput-object v4, p0, Lcom/htc/album/helper/ShareMenuManager;->mSharePluginList:Ljava/util/ArrayList;

    goto :goto_0

    .line 977
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    :catch_0
    move-exception v1

    .line 978
    .local v1, e:Ljava/lang/RuntimeException;
    sget-object v6, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ShareMenuManager][createSocialPluginShareList] RuntimeException :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    const/4 v0, 0x0

    .line 983
    goto :goto_1

    .line 980
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 981
    .local v1, e:Ljava/lang/Exception;
    sget-object v6, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ShareMenuManager][createSocialPluginShareList] Exception :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    const/4 v0, 0x0

    goto :goto_1

    .line 988
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    iget-object v6, p0, Lcom/htc/album/helper/ShareMenuManager;->mSharePluginList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v5, v6}, Lcom/htc/album/helper/ShareMenuManager;->getOrderPluginComparableList(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_2
.end method

.method public createSocialShareBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;)Z
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 854
    .local p2, shareBtn:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    invoke-static {p1}, Lcom/htc/album/helper/ShareMenuManager;->createSocialShareList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 856
    .local v0, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/album/helper/ShareMenuManager;->doCreateBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;Ljava/util/ArrayList;)Z

    move-result v1

    return v1
.end method

.method public createSocialShareDialog(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;
    .locals 2
    .parameter "context"
    .parameter "titleRes"
    .parameter "clickListener"

    .prologue
    .line 860
    invoke-static {p1}, Lcom/htc/album/helper/ShareMenuManager;->createSocialShareList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 861
    .local v0, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/album/helper/ShareMenuManager;->doCreateSocialShareIconListDialog(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;Ljava/util/ArrayList;)Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public createSocialShareDropList(Landroid/content/Context;Landroid/view/SubMenu;I)Z
    .locals 2
    .parameter "context"
    .parameter "shareMenu"
    .parameter "nGroupId"

    .prologue
    .line 865
    invoke-static {p1}, Lcom/htc/album/helper/ShareMenuManager;->createSocialShareList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 867
    .local v0, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/album/helper/ShareMenuManager;->doCreateDropList(Landroid/content/Context;Landroid/view/SubMenu;ILjava/util/ArrayList;)Z

    move-result v1

    return v1
.end method

.method public createSocialShareMenu(Landroid/content/Context;Landroid/view/Menu;)Z
    .locals 1
    .parameter "context"
    .parameter "menu"

    .prologue
    .line 850
    const/4 v0, 0x0

    return v0
.end method

.method public doCreatePluginBubble(Lcom/htc/album/modules/ui/widget/FooterButton;Ljava/util/ArrayList;)Z
    .locals 7
    .parameter "footerBtn"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/FooterButton;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/album/plugin/CommandBarButton;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    const/4 v4, 0x0

    .line 1019
    const/4 v1, 0x0

    .line 1020
    .local v1, bBtnIconBitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 1022
    .local v3, toDoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    if-nez p1, :cond_1

    .line 1044
    :cond_0
    :goto_0
    return v4

    .line 1025
    :cond_1
    iget-object v5, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-virtual {p1, v5}, Lcom/htc/album/modules/ui/widget/FooterButton;->setSharedAdapter(Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;)V

    .line 1027
    if-eqz p2, :cond_2

    .line 1028
    move-object v3, p2

    .line 1035
    :goto_1
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/FooterButton;->clearBubble()V

    .line 1036
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/plugin/CommandBarButton;

    .line 1038
    .local v0, b:Lcom/htc/opensense/album/plugin/CommandBarButton;
    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1039
    if-eqz v1, :cond_3

    .line 1040
    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v4

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v1, v5}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(ILandroid/graphics/Bitmap;Ljava/lang/String;)Lcom/htc/album/modules/ui/widget/BubbleButton;

    goto :goto_2

    .line 1029
    .end local v0           #b:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v5, p0, Lcom/htc/album/helper/ShareMenuManager;->mSharePluginList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 1030
    iget-object v3, p0, Lcom/htc/album/helper/ShareMenuManager;->mSharePluginList:Ljava/util/ArrayList;

    goto :goto_1

    .line 1042
    .restart local v0       #b:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v4

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/htc/album/modules/ui/widget/BubbleButton;

    goto :goto_2

    .line 1044
    .end local v0           #b:Lcom/htc/opensense/album/plugin/CommandBarButton;
    :cond_4
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public doCreateSocialShareIconListDialog(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;Ljava/util/ArrayList;)Landroid/app/AlertDialog;
    .locals 9
    .parameter "context"
    .parameter "title"
    .parameter "clickListener"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;)",
            "Landroid/app/AlertDialog;"
        }
    .end annotation

    .prologue
    .local p4, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const/4 v6, 0x0

    .line 1083
    const/4 v3, 0x0

    .line 1084
    .local v3, shareListDialog:Landroid/app/AlertDialog;
    if-nez p1, :cond_0

    .line 1086
    sget-object v7, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Context is null..."

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    :goto_0
    return-object v6

    .line 1089
    :cond_0
    new-instance v7, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    const/4 v8, 0x1

    invoke-direct {v7, p1, p4, v8}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v7, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    .line 1090
    iget-object v7, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    if-nez v7, :cond_1

    .line 1092
    sget-object v7, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v8, "sharedAdapter is null..."

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1095
    :cond_1
    invoke-static {}, Lcom/htc/album/helper/ShareMenuManager;->getShareMultipleAdapter()Lcom/htc/widget/HtcShareViaMultipleAdapter;

    move-result-object v4

    .line 1096
    .local v4, shareViaAdapter:Lcom/htc/widget/HtcShareViaMultipleAdapter;
    new-instance v5, Lcom/htc/widget/HtcShareViaDialogOnClickListener;

    new-instance v6, Lcom/htc/album/helper/ShareMenuManager$1;

    invoke-direct {v6, p0, v4, p3}, Lcom/htc/album/helper/ShareMenuManager$1;-><init>(Lcom/htc/album/helper/ShareMenuManager;Lcom/htc/widget/HtcShareViaMultipleAdapter;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)V

    invoke-direct {v5, v3, v4, v6}, Lcom/htc/widget/HtcShareViaDialogOnClickListener;-><init>(Landroid/app/AlertDialog;Lcom/htc/widget/IHtcShareViaAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1115
    .local v5, shareViaListener:Lcom/htc/widget/HtcShareViaDialogOnClickListener;
    invoke-static {p1, p2, v4, v5}, Lcom/htc/album/Customizable/CustHtcAlertDialog;->createAlertDialogBuilder(Landroid/content/Context;ILandroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1119
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    if-eqz v0, :cond_2

    .line 1121
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 1123
    :cond_2
    if-eqz v3, :cond_4

    .line 1125
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_ListSelectorHighlightedColor(Landroid/content/Context;)I

    move-result v2

    .line 1126
    .local v2, resId:I
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 1127
    .local v1, dialogLView:Landroid/widget/ListView;
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 1129
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(I)V

    .line 1131
    :cond_3
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .end local v1           #dialogLView:Landroid/widget/ListView;
    .end local v2           #resId:I
    :cond_4
    move-object v6, v3

    .line 1133
    goto :goto_0
.end method

.method public getPluginFooterButton()Lcom/htc/album/modules/ui/widget/FooterButton;
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/htc/album/helper/ShareMenuManager;->mSharePluginFooterBtn:Lcom/htc/album/modules/ui/widget/FooterButton;

    return-object v0
.end method

.method public getSharePluginButtonID()I
    .locals 1

    .prologue
    .line 1054
    iget v0, p0, Lcom/htc/album/helper/ShareMenuManager;->mSharePluginButtonId:I

    return v0
.end method

.method public onLocalShareFolderClick(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)V
    .locals 2
    .parameter "context"
    .parameter "shareIndex"
    .parameter "shareClickListener"

    .prologue
    .line 796
    if-nez p1, :cond_1

    .line 803
    :cond_0
    :goto_0
    return-void

    .line 799
    :cond_1
    if-eqz p3, :cond_0

    .line 801
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-interface {p3, v0, v1, p2}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;->onClick(Landroid/content/DialogInterface;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;I)V

    goto :goto_0
.end method

.method public onSocialShareClick(Landroid/content/Context;ILjava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "shareIndex"
    .parameter "shareLink"

    .prologue
    .line 871
    iget-object v0, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    .line 872
    .local v0, adapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 875
    :cond_1
    invoke-virtual {v0, p2}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v2

    .line 876
    .local v2, target:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 878
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 879
    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 880
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 881
    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 884
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 886
    :catch_0
    move-exception v1

    .line 888
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const v3, 0x7f0a009f

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 946
    sput-object v0, Lcom/htc/album/helper/ShareMenuManager;->mShareMultipleAdapter:Lcom/htc/widget/HtcShareViaMultipleAdapter;

    .line 947
    iput-object v0, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    .line 948
    return-void
.end method

.method public setPluginFooterButton(Lcom/htc/album/modules/ui/widget/FooterButton;)V
    .locals 0
    .parameter "footer"

    .prologue
    .line 1058
    if-eqz p1, :cond_0

    .line 1059
    iput-object p1, p0, Lcom/htc/album/helper/ShareMenuManager;->mSharePluginFooterBtn:Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 1060
    :cond_0
    return-void
.end method

.method public setSharePluginButtonID(I)V
    .locals 0
    .parameter "buttonID"

    .prologue
    .line 1049
    iput p1, p0, Lcom/htc/album/helper/ShareMenuManager;->mSharePluginButtonId:I

    .line 1050
    return-void
.end method
