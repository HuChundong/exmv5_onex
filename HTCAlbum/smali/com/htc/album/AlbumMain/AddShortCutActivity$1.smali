.class Lcom/htc/album/AlbumMain/AddShortCutActivity$1;
.super Ljava/lang/Object;
.source "AddShortCutActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/AlbumMain/AddShortCutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/AlbumMain/AddShortCutActivity;


# direct methods
.method constructor <init>(Lcom/htc/album/AlbumMain/AddShortCutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity$1;->this$0:Lcom/htc/album/AlbumMain/AddShortCutActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 102
    .local p1, arg0:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v1, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity$1;->this$0:Lcom/htc/album/AlbumMain/AddShortCutActivity;

    #getter for: Lcom/htc/album/AlbumMain/AddShortCutActivity;->mIsClick:Z
    invoke-static {v1}, Lcom/htc/album/AlbumMain/AddShortCutActivity;->access$000(Lcom/htc/album/AlbumMain/AddShortCutActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity$1;->this$0:Lcom/htc/album/AlbumMain/AddShortCutActivity;

    #getter for: Lcom/htc/album/AlbumMain/AddShortCutActivity;->mAdapter:Lcom/htc/album/AlbumMain/AddShortCutActivity$ShortcutAdapter;
    invoke-static {v1}, Lcom/htc/album/AlbumMain/AddShortCutActivity;->access$100(Lcom/htc/album/AlbumMain/AddShortCutActivity;)Lcom/htc/album/AlbumMain/AddShortCutActivity$ShortcutAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/htc/album/AlbumMain/AddShortCutActivity$ShortcutAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    sput-object v1, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mAddTabPlug:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    .line 107
    iget-object v1, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity$1;->this$0:Lcom/htc/album/AlbumMain/AddShortCutActivity;

    const/4 v2, 0x1

    #setter for: Lcom/htc/album/AlbumMain/AddShortCutActivity;->mIsClick:Z
    invoke-static {v1, v2}, Lcom/htc/album/AlbumMain/AddShortCutActivity;->access$002(Lcom/htc/album/AlbumMain/AddShortCutActivity;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity$1;->this$0:Lcom/htc/album/AlbumMain/AddShortCutActivity;

    #getter for: Lcom/htc/album/AlbumMain/AddShortCutActivity;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;
    invoke-static {v1}, Lcom/htc/album/AlbumMain/AddShortCutActivity;->access$200(Lcom/htc/album/AlbumMain/AddShortCutActivity;)Lcom/htc/album/AlbumMain/MfMainActivityBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 116
    :cond_1
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Ljava/lang/Exception;
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "AddShortCutActivity"

    const-string v2, "[HTCAlbum][AddShortCutActivity][onItemClick]: no plugin..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
