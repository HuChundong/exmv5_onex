.class Lcom/htc/album/AlbumMain/FragmentLandingPage$1;
.super Ljava/lang/Object;
.source "FragmentLandingPage.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/AlbumMain/FragmentLandingPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/AlbumMain/FragmentLandingPage;


# direct methods
.method constructor <init>(Lcom/htc/album/AlbumMain/FragmentLandingPage;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage$1;->this$0:Lcom/htc/album/AlbumMain/FragmentLandingPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 11
    .parameter
    .parameter "view"
    .parameter "pos"
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
    .line 207
    .local p1, arg0:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v6, 0x0

    .line 208
    .local v6, tmp:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;
    const/4 v4, 0x0

    .line 212
    .local v4, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    :try_start_0
    iget-object v8, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage$1;->this$0:Lcom/htc/album/AlbumMain/FragmentLandingPage;

    #getter for: Lcom/htc/album/AlbumMain/FragmentLandingPage;->mAdapter:Lcom/htc/album/AlbumMain/AdapterLandingPage;
    invoke-static {v8}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->access$000(Lcom/htc/album/AlbumMain/FragmentLandingPage;)Lcom/htc/album/AlbumMain/AdapterLandingPage;

    move-result-object v8

    if-nez v8, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v8, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage$1;->this$0:Lcom/htc/album/AlbumMain/FragmentLandingPage;

    #getter for: Lcom/htc/album/AlbumMain/FragmentLandingPage;->mAdapter:Lcom/htc/album/AlbumMain/AdapterLandingPage;
    invoke-static {v8}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->access$000(Lcom/htc/album/AlbumMain/FragmentLandingPage;)Lcom/htc/album/AlbumMain/AdapterLandingPage;

    move-result-object v8

    invoke-virtual {v8, p3}, Lcom/htc/album/AlbumMain/AdapterLandingPage;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    move-object v6, v0

    .line 218
    if-eqz v6, :cond_0

    .line 222
    invoke-virtual {v6}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->getTabPlugin()Lcom/htc/opensense/plugin/TabPlugin;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 229
    :cond_2
    :goto_1
    if-eqz v4, :cond_0

    .line 233
    sget-boolean v8, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v8, :cond_3

    const-string v8, "FragmentLandingPage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][FragmentLandingPage][onItemClick]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_3
    iget-object v8, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage$1;->this$0:Lcom/htc/album/AlbumMain/FragmentLandingPage;

    #getter for: Lcom/htc/album/AlbumMain/FragmentLandingPage;->mIsFirstItemClick:Z
    invoke-static {v8}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->access$100(Lcom/htc/album/AlbumMain/FragmentLandingPage;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 239
    sget-boolean v8, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "FragmentLandingPage"

    const-string v9, "[HTCAlbum][FragmentLandingPage][onItemClick]: there have an item has been clicked, do nothing this time"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 224
    :catch_0
    move-exception v2

    .line 226
    .local v2, e:Ljava/lang/Exception;
    sget-boolean v8, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v8, :cond_2

    const-string v8, "FragmentLandingPage"

    const-string v9, "[HTCAlbum][FragmentLandingPage][onItemClick]: no plugin..."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 242
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    iget-object v8, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage$1;->this$0:Lcom/htc/album/AlbumMain/FragmentLandingPage;

    const/4 v9, 0x0

    #setter for: Lcom/htc/album/AlbumMain/FragmentLandingPage;->mIsFirstItemClick:Z
    invoke-static {v8, v9}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->access$102(Lcom/htc/album/AlbumMain/FragmentLandingPage;Z)Z

    .line 246
    const-string v8, "com.htc.album-com.htc.album.TabPluginDevice.TabPluginDevice"

    invoke-virtual {v4}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 248
    sget-boolean v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v8, :cond_5

    const-string v8, "profiler.performance"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    .line 250
    :cond_5
    iget-object v8, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage$1;->this$0:Lcom/htc/album/AlbumMain/FragmentLandingPage;

    #getter for: Lcom/htc/album/AlbumMain/FragmentLandingPage;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->access$200(Lcom/htc/album/AlbumMain/FragmentLandingPage;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/album/Customizable/CustAlbumCollection;->getStringForCollectionKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 251
    .local v7, viewName:Ljava/lang/String;
    const-string v8, "AutoTest"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[AutoProf](303) [LAUNCH_TIME][Gallery]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "][START]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .end local v7           #viewName:Ljava/lang/String;
    :cond_6
    invoke-virtual {v4}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v3

    .line 257
    .local v3, intent:Landroid/content/Intent;
    if-nez v3, :cond_7

    .line 259
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 261
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_7
    iget-object v8, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage$1;->this$0:Lcom/htc/album/AlbumMain/FragmentLandingPage;

    #getter for: Lcom/htc/album/AlbumMain/FragmentLandingPage;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->access$200(Lcom/htc/album/AlbumMain/FragmentLandingPage;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a019d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 263
    .local v5, strLocal:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->getTabName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 265
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 266
    .local v1, childIntent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 267
    iget-object v8, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage$1;->this$0:Lcom/htc/album/AlbumMain/FragmentLandingPage;

    invoke-virtual {v8, v4, v1}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->launchPluginFragment(Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 271
    .end local v1           #childIntent:Landroid/content/Intent;
    :cond_8
    iget-object v8, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage$1;->this$0:Lcom/htc/album/AlbumMain/FragmentLandingPage;

    invoke-virtual {v8, v4, v3}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->launchPluginFragment(Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
