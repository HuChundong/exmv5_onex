.class public Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;
.super Ljava/lang/Object;
.source "ShareDialogHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShareDialogHelper"


# instance fields
.field private bIsDrm:Z

.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mShareAdapter:Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;

.field private mShareDialog:Lcom/htc/widget/HtcAlertDialog;

.field mShareListClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mShareViaDialogListener:Lcom/htc/widget/HtcShareViaDialogOnClickListener;

.field private mShareViaMultipleAdapter:Lcom/htc/widget/HtcShareViaMultipleAdapter;

.field private mUri:Landroid/net/Uri;

.field private mVideoMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "uri"
    .parameter "mime"

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->bIsDrm:Z

    .line 48
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mShareDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 49
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mShareViaMultipleAdapter:Lcom/htc/widget/HtcShareViaMultipleAdapter;

    .line 50
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mShareViaDialogListener:Lcom/htc/widget/HtcShareViaDialogOnClickListener;

    .line 51
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mVideoMimeType:Ljava/lang/String;

    .line 309
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper$1;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper$1;-><init>(Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mShareListClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 56
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mActivity:Landroid/app/Activity;

    .line 57
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mUri:Landroid/net/Uri;

    .line 59
    iput-object p3, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mVideoMimeType:Ljava/lang/String;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;)Lcom/htc/widget/HtcShareViaMultipleAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mShareViaMultipleAdapter:Lcom/htc/widget/HtcShareViaMultipleAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;)Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mShareAdapter:Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mVideoMimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mShareDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method private createShareMultipleAdapterInstance(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/content/Context;)V
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
    .local p1, intents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .local p2, allows:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, excludes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v8, 0x20

    .line 365
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/LOG;->isDebug()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 367
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 369
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 370
    .local v4, strBuf:Ljava/lang/StringBuffer;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 372
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

    .line 374
    .end local v2           #i:Landroid/content/Intent;
    :cond_0
    const-string v5, "ShareDialogHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[createShareMultipleAdapterInstance] Intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #strBuf:Ljava/lang/StringBuffer;
    :cond_1
    if-eqz p2, :cond_3

    .line 379
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 380
    .restart local v4       #strBuf:Ljava/lang/StringBuffer;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 382
    .local v0, allow:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 384
    .end local v0           #allow:Ljava/lang/String;
    :cond_2
    const-string v5, "ShareDialogHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[createShareMultipleAdapterInstance] Allow: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #strBuf:Ljava/lang/StringBuffer;
    :cond_3
    if-eqz p3, :cond_5

    .line 389
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 390
    .restart local v4       #strBuf:Ljava/lang/StringBuffer;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 392
    .local v1, exclude:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 394
    .end local v1           #exclude:Ljava/lang/String;
    :cond_4
    const-string v5, "ShareDialogHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[createShareMultipleAdapterInstance] Exclude: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #strBuf:Ljava/lang/StringBuffer;
    :cond_5
    new-instance v5, Lcom/htc/widget/HtcShareViaMultipleAdapter;

    invoke-direct {v5, p1, p2, p3, p4}, Lcom/htc/widget/HtcShareViaMultipleAdapter;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mShareViaMultipleAdapter:Lcom/htc/widget/HtcShareViaMultipleAdapter;

    .line 398
    return-void
.end method

.method public static doShareSingleMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 18
    .parameter "context"
    .parameter "shareIntent"
    .parameter "imageUri"
    .parameter "mime"

    .prologue
    .line 74
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const-string v15, "SharedAdapter.KEY_PACKAGE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 80
    .local v11, sharedPkgName:Ljava/lang/String;
    const-string v15, "SharedAdapter.KEY_PACKAGE_FOR_OTHER"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 81
    .local v12, sharedPkgNameForOther:Ljava/lang/String;
    const/4 v8, 0x0

    .line 83
    .local v8, selectSharePkgName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 85
    .local v4, fromAlbum:Z
    const-string v15, "SharedAdapter.KEY_SHARE_TO"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;

    .line 86
    .local v10, shareItemGroup:Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;
    if-eqz v10, :cond_2

    .line 87
    const-string v15, "SharedAdapter.KEY_SHARE_TO"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 89
    :cond_2
    if-eqz v11, :cond_5

    .line 91
    const/4 v4, 0x1

    .line 92
    move-object v8, v11

    .line 100
    :cond_3
    :goto_1
    if-eqz v8, :cond_0

    .line 102
    const-string v15, "com.htc.socialnetwork.facebook"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    const-string v15, "com.htc.socialnetwork.flickr"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 104
    :cond_4
    if-eqz v4, :cond_8

    .line 108
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 109
    .local v5, intentShare:Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v11, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .local v3, conpont:Landroid/content/ComponentName;
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 112
    const-string v15, "com.htc.socialnetwork.facebook"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 113
    .local v6, isFacebook:Z
    if-eqz v6, :cond_6

    sget-object v15, Lcom/htc/videowidget/videoview/utilities/share/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v13, v15, v16

    .line 114
    .local v13, strServiceName:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/htc/videowidget/videoview/utilities/share/CommonServices;->scan4UploadServiceShareIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 116
    if-eqz v5, :cond_7

    .line 118
    invoke-static {}, Lcom/htc/wrap/com/google/android/collect/HtcWrapLists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 119
    .local v7, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-static {}, Lcom/htc/wrap/com/google/android/collect/HtcWrapLists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v14

    .line 121
    .local v14, tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 122
    .local v2, bundle:Landroid/os/Bundle;
    const-string v15, "com.htc.opensense.upload.URI"

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v15, "com.htc.opensense.upload.MIMETYPE"

    move-object/from16 v0, p3

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v15, "com.htc.opensense.upload.TITLE"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v15, "com.htc.opensense.upload.DESCRIPTION"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 131
    const/high16 v15, 0x1000

    invoke-virtual {v5, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    const-string v15, "htc.intent.action.SEND_MULTIPLE"

    invoke-virtual {v5, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v15, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    invoke-virtual {v5, v15, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 135
    const-string v15, "com.htc.opensense.upload.UPLOAD_TAG_DATA_LIST"

    invoke-virtual {v5, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 136
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 94
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v3           #conpont:Landroid/content/ComponentName;
    .end local v5           #intentShare:Landroid/content/Intent;
    .end local v6           #isFacebook:Z
    .end local v7           #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v13           #strServiceName:Ljava/lang/String;
    .end local v14           #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_5
    if-eqz v12, :cond_3

    .line 96
    const/4 v4, 0x0

    .line 97
    move-object v8, v12

    goto/16 :goto_1

    .line 113
    .restart local v3       #conpont:Landroid/content/ComponentName;
    .restart local v5       #intentShare:Landroid/content/Intent;
    .restart local v6       #isFacebook:Z
    :cond_6
    sget-object v15, Lcom/htc/videowidget/videoview/utilities/share/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/16 v16, 0x1

    aget-object v13, v15, v16

    goto :goto_2

    .line 139
    .restart local v13       #strServiceName:Ljava/lang/String;
    :cond_7
    const-string v15, "ShareDialogHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[ShareButton][doShareSingleMedia]: setScanIntent NG ! strServiceName: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/videowidget/videoview/utilities/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    .end local v3           #conpont:Landroid/content/ComponentName;
    .end local v5           #intentShare:Landroid/content/Intent;
    .end local v6           #isFacebook:Z
    .end local v13           #strServiceName:Ljava/lang/String;
    :cond_8
    const-string v15, "ShareDialogHelper"

    const-string v16, "[ShareButton][doShareSingleMedia]: com.htc.socialnetwork.facebook or com.htc.socialnetwork.flickr"

    invoke-static/range {v15 .. v16}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/htc/wrap/com/google/android/collect/HtcWrapLists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 145
    .restart local v7       #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-static {}, Lcom/htc/wrap/com/google/android/collect/HtcWrapLists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v14

    .line 147
    .restart local v14       #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 148
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v15, "com.htc.opensense.upload.URI"

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v15, "com.htc.opensense.upload.MIMETYPE"

    move-object/from16 v0, p3

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v15, "com.htc.opensense.upload.TITLE"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v15, "com.htc.opensense.upload.DESCRIPTION"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 155
    .restart local v5       #intentShare:Landroid/content/Intent;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string v15, "SharedAdapter.KEY_CLASS_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v12, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v15, "htc.intent.action.SEND_MULTIPLE"

    invoke-virtual {v5, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v15, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    invoke-virtual {v5, v15, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 159
    const-string v15, "com.htc.opensense.upload.UPLOAD_TAG_DATA_LIST"

    invoke-virtual {v5, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 160
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 163
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v5           #intentShare:Landroid/content/Intent;
    .end local v7           #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v14           #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_9
    const-string v15, "com.android.mms"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 165
    const-string v15, "com.htc.intent.action.SEND_MSG"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    invoke-virtual/range {p1 .. p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const/high16 v15, 0x1000

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 168
    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 170
    :cond_a
    const-string v15, "com.htc.vmm.SEND"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 172
    const-string v15, "ShareDialogHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[ShareButton][doShareSingleVMMMedia]: Intent.ACTION_SEND: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    if-eqz v10, :cond_c

    invoke-virtual {v10}, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->isGroupItem()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 175
    const/4 v9, 0x0

    .line 176
    .local v9, shareItem:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    const-string v15, "image"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 177
    const v15, 0x10001

    invoke-virtual {v10, v15}, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->getGroupItem(I)Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;

    move-result-object v9

    .line 181
    :cond_b
    :goto_3
    if-eqz v9, :cond_c

    .line 183
    invoke-interface {v9}, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;->createIntent()Landroid/content/Intent;

    move-result-object p1

    .line 184
    const-string v15, "ShareDialogHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[ShareButton][doShareSingleVMMMedia]: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v9}, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;->getActivityName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .end local v9           #shareItem:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    :cond_c
    const-string v15, "com.htc.vmm.SEND"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v15, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 189
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const/high16 v15, 0x1000

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 191
    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 178
    .restart local v9       #shareItem:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    :cond_d
    const-string v15, "video"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 179
    const v15, 0x10002

    invoke-virtual {v10, v15}, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->getGroupItem(I)Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;

    move-result-object v9

    goto :goto_3

    .line 195
    .end local v9           #shareItem:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    :cond_e
    const-string v15, "ShareDialogHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[ShareButton][doShareSingleMedia]: Intent.ACTION_SEND: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    if-eqz v10, :cond_10

    invoke-virtual {v10}, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->isGroupItem()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 198
    const/4 v9, 0x0

    .line 199
    .restart local v9       #shareItem:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    const-string v15, "image"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 200
    const v15, 0x10001

    invoke-virtual {v10, v15}, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->getGroupItem(I)Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;

    move-result-object v9

    .line 204
    :cond_f
    :goto_4
    if-eqz v9, :cond_10

    .line 206
    invoke-interface {v9}, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;->createIntent()Landroid/content/Intent;

    move-result-object p1

    .line 207
    const-string v15, "ShareDialogHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[ShareButton][doShareSingleMedia]: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v9}, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;->getActivityName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .end local v9           #shareItem:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    :cond_10
    const-string v15, "android.intent.action.SEND"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v15, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 212
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const/high16 v15, 0x1000

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 214
    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 201
    .restart local v9       #shareItem:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    :cond_11
    const-string v15, "video"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 202
    const v15, 0x10002

    invoke-virtual {v10, v15}, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->getGroupItem(I)Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;

    move-result-object v9

    goto :goto_4
.end method


# virtual methods
.method public dismissShareDialog()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mShareDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mShareDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mShareDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 307
    :cond_0
    return-void
.end method

.method public getShareTargets()Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v5, mergedComparableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v12, tmpList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 224
    .local v7, pm:Landroid/content/pm/PackageManager;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v10, shareIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.htc.vmm.SEND"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v13, vmmIntent:Landroid/content/Intent;
    const-string v14, "video/*"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const/high16 v14, 0x1

    invoke-virtual {v7, v13, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    .line 231
    const-string v14, "com.htc.vmm.SEND"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mContext:Landroid/content/Context;

    const v16, 0x10002

    move/from16 v0, v16

    invoke-static {v5, v12, v14, v15, v0}, Lcom/htc/videowidget/videoview/utilities/share/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 232
    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    new-instance v9, Landroid/content/Intent;

    const-string v14, "android.intent.action.SEND"

    invoke-direct {v9, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .local v9, sendIntent:Landroid/content/Intent;
    const-string v14, "android.intent.category.DEFAULT"

    invoke-virtual {v9, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string v14, "video/*"

    invoke-virtual {v9, v14}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const/high16 v14, 0x1

    invoke-virtual {v7, v9, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    .line 239
    const-string v14, "android.intent.action.SEND"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mContext:Landroid/content/Context;

    const v16, 0x10002

    move/from16 v0, v16

    invoke-static {v5, v12, v14, v15, v0}, Lcom/htc/videowidget/videoview/utilities/share/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 240
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v6, Landroid/content/Intent;

    const-string v14, "com.htc.intent.action.SEND_MSG"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v6, msgintent:Landroid/content/Intent;
    const-string v14, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const-string v14, "video/*"

    invoke-virtual {v6, v14}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const/high16 v14, 0x1

    invoke-virtual {v7, v6, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    .line 246
    const-string v14, "com.htc.intent.action.SEND_MSG"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mContext:Landroid/content/Context;

    const v16, 0x10002

    move/from16 v0, v16

    invoke-static {v5, v12, v14, v15, v0}, Lcom/htc/videowidget/videoview/utilities/share/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 247
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v1, allowPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->bIsDrm:Z

    if-eqz v14, :cond_0

    .line 252
    invoke-static {v5, v1}, Lcom/htc/videowidget/videoview/utilities/share/CompListUtil;->FilterOutItemsExceptMailAndMMSAndBT(Ljava/util/List;Ljava/util/List;)V

    .line 255
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v2, excludePackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v14, Lcom/htc/videowidget/common/Constants;->DISABLE_MMS:Z

    if-eqz v14, :cond_1

    .line 257
    invoke-static {v5, v2}, Lcom/htc/videowidget/videoview/utilities/share/CompListUtil;->FilterOutMMSItems(Ljava/util/List;Ljava/util/List;)V

    .line 259
    :cond_1
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 261
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;

    .line 263
    .local v4, info:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    const/4 v11, 0x0

    .line 265
    .local v11, szLabel:Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 268
    const-string v14, "ShareDialogHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[ShareButton][createVideoShareList]: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    .end local v4           #info:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    .end local v11           #szLabel:Ljava/lang/String;
    :cond_3
    invoke-static {v5, v2}, Lcom/htc/videowidget/videoview/utilities/share/CompListUtil;->FilterOutDisabledItems(Ljava/util/List;Ljava/util/List;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v1, v2, v14}, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->createShareMultipleAdapterInstance(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/content/Context;)V

    .line 274
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_4

    .line 286
    .end local v5           #mergedComparableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;>;"
    :goto_1
    return-object v5

    .line 280
    .restart local v5       #mergedComparableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v8

    .line 281
    .local v8, res:Landroid/content/res/Resources;
    if-nez v8, :cond_5

    .line 282
    const-string v14, "ShareDialogHelper"

    const-string v15, "[getShareTargets] res is null"

    invoke-static {v14, v15}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :goto_2
    const/4 v5, 0x0

    goto :goto_1

    .line 284
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mContext:Landroid/content/Context;

    const v15, 0x6090011

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method public init()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->getShareTargets()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mShareAdapter:Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;

    .line 65
    return-void
.end method

.method public isDrmFile(Z)V
    .locals 0
    .parameter "isDrm"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->bIsDrm:Z

    .line 70
    return-void
.end method

.method public showShareDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 291
    new-instance v1, Lcom/htc/widget/HtcShareViaDialogOnClickListener;

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mShareViaMultipleAdapter:Lcom/htc/widget/HtcShareViaMultipleAdapter;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mShareListClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v1, v2, v3}, Lcom/htc/widget/HtcShareViaDialogOnClickListener;-><init>(Lcom/htc/widget/IHtcShareViaAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mShareViaDialogListener:Lcom/htc/widget/HtcShareViaDialogOnClickListener;

    .line 292
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 293
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mContext:Landroid/content/Context;

    const v2, 0x20402e6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 294
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mShareViaMultipleAdapter:Lcom/htc/widget/HtcShareViaMultipleAdapter;

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mShareViaDialogListener:Lcom/htc/widget/HtcShareViaDialogOnClickListener;

    invoke-virtual {v0, v1, v4, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 296
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mShareDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 297
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mShareDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 298
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mShareDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 299
    return-void
.end method
