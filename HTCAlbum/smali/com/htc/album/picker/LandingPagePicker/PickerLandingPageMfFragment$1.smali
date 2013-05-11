.class Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment$1;
.super Ljava/lang/Object;
.source "PickerLandingPageMfFragment.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;


# direct methods
.method constructor <init>(Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment$1;->this$0:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 13
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
    .line 61
    .local p1, arg0:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v10, 0x0

    .line 62
    .local v10, tmp:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;
    const/4 v8, 0x0

    .line 66
    .local v8, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    :try_start_0
    iget-object v11, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment$1;->this$0:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;

    invoke-virtual {v11}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;->getAdapter()Lcom/htc/album/AlbumMain/AdapterLandingPage;

    move-result-object v2

    .line 67
    .local v2, adapter:Lcom/htc/album/AlbumMain/AdapterLandingPage;
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/htc/album/AlbumMain/AdapterLandingPage;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    move-object v10, v0

    .line 68
    invoke-virtual {v10}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->getTabPlugin()Lcom/htc/opensense/plugin/TabPlugin;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 75
    .end local v2           #adapter:Lcom/htc/album/AlbumMain/AdapterLandingPage;
    :goto_0
    if-nez v8, :cond_0

    .line 106
    :goto_1
    return-void

    .line 70
    :catch_0
    move-exception v4

    .line 72
    .local v4, e:Ljava/lang/Exception;
    const-string v11, "PickerLandingPageMfFragment"

    const-string v12, "[HTCAlbum][PickerLandingPageMfFragment][onItemClick]: no plugin..."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    .end local v4           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v11, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment$1;->this$0:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;

    invoke-virtual {v11}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a019d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 78
    .local v9, strLocal:Ljava/lang/String;
    const/4 v5, 0x0

    .line 80
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {v10}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->getTabName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 82
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 83
    .restart local v5       #intent:Landroid/content/Intent;
    iget-object v11, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment$1;->this$0:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;

    invoke-virtual {v11}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 84
    .local v3, bundle:Landroid/os/Bundle;
    iget-object v11, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment$1;->this$0:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;

    invoke-virtual {v11}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    .line 85
    .local v6, intentType:Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    if-eqz v3, :cond_1

    .line 87
    invoke-virtual {v5, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 88
    :cond_1
    const/4 v1, 0x0

    .line 89
    .local v1, action:Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment$1;->this$0:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;

    #getter for: Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;->mPickerManager:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;
    invoke-static {v11}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;->access$000(Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;)Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 91
    iget-object v11, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment$1;->this$0:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;

    #getter for: Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;->mPickerManager:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;
    invoke-static {v11}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;->access$000(Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;)Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->getPickerLandingPageParameter()Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    move-result-object v7

    .line 92
    .local v7, pickerParam:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;
    invoke-interface {v7}, Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;->isAlbumPicker()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 93
    const-string v1, "com.htc.HTCAlbum.action.FOLDER_PICKER_FROM_COLLECTIONS"

    .line 97
    .end local v7           #pickerParam:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;
    :cond_2
    :goto_2
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    iget-object v11, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment$1;->this$0:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;

    invoke-virtual {v11}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const/16 v12, 0x145b

    invoke-virtual {v11, v5, v12}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 94
    .restart local v7       #pickerParam:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;
    :cond_3
    invoke-interface {v7}, Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;->isSingleItemPicker()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 95
    const-string v1, "com.htc.HTCAlbum.action.ITEM_PICKER_FROM_COLLECTIONS"

    goto :goto_2

    .line 103
    .end local v1           #action:Ljava/lang/String;
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v6           #intentType:Ljava/lang/String;
    .end local v7           #pickerParam:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;
    :cond_4
    invoke-virtual {v8}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v5

    .line 104
    iget-object v11, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment$1;->this$0:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;

    #calls: Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;->launchPluginFragment(Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V
    invoke-static {v11, v8, v5}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;->access$100(Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V

    goto/16 :goto_1
.end method
