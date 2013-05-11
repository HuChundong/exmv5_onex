.class Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$2;
.super Landroid/os/Handler;
.source "ActivityAlbumFolderSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$2;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "m"

    .prologue
    const/4 v7, 0x1

    .line 138
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$2;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->isFinishing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 145
    :pswitch_1
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$2;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$000(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$2;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$000(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    move-result-object v6

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mLoadingThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->access$100(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 146
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$2;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$000(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    move-result-object v6

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mLoadingThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->access$100(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->doLoading()V

    goto :goto_0

    .line 151
    :pswitch_2
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$2;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #setter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mNotifyUpdateflag:Z
    invoke-static {v6, v7}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$202(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;Z)Z

    .line 152
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$2;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mLastScrollState:I
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$300(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)I

    move-result v6

    if-nez v6, :cond_0

    .line 155
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$2;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$000(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->notifyDecodeReady(I)V

    goto :goto_0

    .line 160
    :pswitch_3
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$2;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHtcListView:Lcom/htc/widget/HtcListView;
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$400(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/widget/HtcListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v1

    .line 161
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 163
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$2;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHtcListView:Lcom/htc/widget/HtcListView;
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$400(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/widget/HtcListView;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 164
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 165
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;

    .line 166
    .local v4, vTag:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;
    if-eqz v4, :cond_0

    .line 168
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$2;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$000(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 169
    .local v0, acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-eqz v0, :cond_0

    .line 171
    iget-object v5, v4, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->mViewChkBx:Lcom/htc/widget/HtcCheckBox;

    .line 172
    .local v5, viewChkbox:Lcom/htc/widget/HtcCheckBox;
    if-eqz v5, :cond_2

    .line 174
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->isVisible()Z

    move-result v6

    if-ne v7, v6, :cond_3

    .line 175
    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 161
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 177
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_2

    .line 184
    .end local v0           #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #v:Landroid/view/View;
    .end local v4           #vTag:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;
    .end local v5           #viewChkbox:Lcom/htc/widget/HtcCheckBox;
    :pswitch_4
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$2;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    const/16 v7, 0x8

    #calls: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->onUpdateProgressVisibility(I)V
    invoke-static {v6, v7}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$500(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;I)V

    goto/16 :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
