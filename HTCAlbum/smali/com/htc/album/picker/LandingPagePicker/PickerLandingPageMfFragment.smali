.class public Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;
.super Lcom/htc/album/AlbumMain/FragmentLandingPage;
.source "PickerLandingPageMfFragment.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PickerLandingPageMfFragment"


# instance fields
.field private mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mPickerManager:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/FragmentLandingPage;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;->mPickerManager:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;

    .line 56
    new-instance v0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment$1;

    invoke-direct {v0, p0}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment$1;-><init>(Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;)V

    iput-object v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;)Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;->mPickerManager:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;->launchPluginFragment(Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 28
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {p0, v1}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 29
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;->setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V

    .line 31
    invoke-virtual {p0}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;->setPickerParameters(Landroid/content/Intent;)V

    .line 33
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->onDestroy()V

    .line 113
    iget-object v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;->mPickerManager:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;

    invoke-virtual {v0}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->resetPickerParameters()V

    .line 114
    invoke-static {}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->destroyInstance()V

    .line 115
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 40
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 41
    return-void
.end method

.method public setPickerParameters(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 54
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;->mPickerManager:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;

    if-nez v0, :cond_1

    .line 50
    invoke-static {}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->instance()Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;->mPickerManager:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;

    .line 51
    iget-object v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;->mPickerManager:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;

    invoke-virtual {v0, p1}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->setPickerType(Landroid/content/Intent;)V

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;->mPickerManager:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->setExtras(Landroid/os/Bundle;)V

    goto :goto_0
.end method
