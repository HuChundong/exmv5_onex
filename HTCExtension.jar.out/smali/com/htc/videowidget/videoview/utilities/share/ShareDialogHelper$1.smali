.class Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper$1;
.super Ljava/lang/Object;
.source "ShareDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper$1;->this$0:Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 313
    iget-object v9, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper$1;->this$0:Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;

    #getter for: Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mShareViaMultipleAdapter:Lcom/htc/widget/HtcShareViaMultipleAdapter;
    invoke-static {v9}, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->access$000(Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;)Lcom/htc/widget/HtcShareViaMultipleAdapter;

    move-result-object v9

    if-nez v9, :cond_0

    .line 315
    const-string v9, "ShareDialogHelper"

    const-string v10, "[ShareListClickListener] mShareViaMultipleAdapter is null"

    invoke-static {v9, v10}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v9, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper$1;->this$0:Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;

    #getter for: Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mShareViaMultipleAdapter:Lcom/htc/widget/HtcShareViaMultipleAdapter;
    invoke-static {v9}, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->access$000(Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;)Lcom/htc/widget/HtcShareViaMultipleAdapter;

    move-result-object v9

    invoke-virtual {v9, p2}, Lcom/htc/widget/HtcShareViaMultipleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 320
    .local v6, rinfo:Landroid/content/pm/ResolveInfo;
    const/4 v1, -0x1

    .line 321
    .local v1, index:I
    iget-object v9, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper$1;->this$0:Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;

    #getter for: Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mShareAdapter:Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;
    invoke-static {v9}, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->access$100(Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;)Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;->findShareItemIndex(Landroid/content/pm/ResolveInfo;)I

    move-result v1

    .line 324
    const/4 v3, 0x0

    .line 325
    .local v3, intent:Landroid/content/Intent;
    :try_start_0
    iget-object v9, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper$1;->this$0:Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;

    invoke-virtual {v9}, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->getShareTargets()Ljava/util/ArrayList;

    move-result-object v4

    .line 326
    .local v4, mergedComparableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;>;"
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 328
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;

    .line 329
    .local v2, info:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    invoke-interface {v2}, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;->createIntent()Landroid/content/Intent;

    move-result-object v3

    .line 330
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 332
    .local v7, sharedPkgName:Ljava/lang/String;
    const-string v9, "SharedAdapter.KEY_PACKAGE"

    invoke-virtual {v3, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    iget-object v9, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper$1;->this$0:Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;

    #getter for: Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mUri:Landroid/net/Uri;
    invoke-static {v9}, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->access$200(Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;)Landroid/net/Uri;

    move-result-object v8

    .line 334
    .local v8, uri:Landroid/net/Uri;
    iget-object v9, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper$1;->this$0:Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;

    #getter for: Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mVideoMimeType:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->access$300(Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 336
    iget-object v9, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper$1;->this$0:Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;

    #getter for: Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->access$400(Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper$1;->this$0:Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;

    #getter for: Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mVideoMimeType:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->access$300(Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v3, v8, v10}, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->doShareSingleMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    .line 342
    :goto_1
    iget-object v9, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper$1;->this$0:Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;

    #getter for: Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mShareDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v9}, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->access$500(Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    .end local v2           #info:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    .end local v4           #mergedComparableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;>;"
    .end local v7           #sharedPkgName:Ljava/lang/String;
    .end local v8           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 355
    .local v0, ex:Ljava/lang/Exception;
    const-string v9, "ShareDialogHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[ShareListClickListener][onClick!] Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/videowidget/videoview/utilities/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v2       #info:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    .restart local v4       #mergedComparableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;>;"
    .restart local v7       #sharedPkgName:Ljava/lang/String;
    .restart local v8       #uri:Landroid/net/Uri;
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper$1;->this$0:Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;

    #getter for: Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->access$400(Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "video/*"

    invoke-static {v9, v3, v8, v10}, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->doShareSingleMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1

    .line 346
    .end local v2           #info:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    .end local v7           #sharedPkgName:Ljava/lang/String;
    .end local v8           #uri:Landroid/net/Uri;
    :cond_2
    iget-object v9, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper$1;->this$0:Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;

    #getter for: Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->access$400(Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v5

    .line 347
    .local v5, res:Landroid/content/res/Resources;
    if-nez v5, :cond_3

    .line 348
    const-string v9, "ShareDialogHelper"

    const-string v10, "[ShareListClickListener] res is null"

    invoke-static {v9, v10}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 350
    :cond_3
    iget-object v9, p0, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper$1;->this$0:Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;

    #getter for: Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->access$400(Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x6090011

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
