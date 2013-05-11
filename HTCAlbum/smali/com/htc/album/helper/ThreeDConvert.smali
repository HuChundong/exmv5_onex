.class public Lcom/htc/album/helper/ThreeDConvert;
.super Landroid/app/Activity;
.source "ThreeDConvert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/htc/album/helper/ThreeDConvert;->requestWindowFeature(I)Z

    .line 24
    invoke-virtual {p0}, Lcom/htc/album/helper/ThreeDConvert;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 25
    .local v1, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 27
    .local v2, fragmentTransaction:Landroid/app/FragmentTransaction;
    new-instance v0, Lcom/htc/album/helper/ThreeDConvertFragment;

    invoke-direct {v0}, Lcom/htc/album/helper/ThreeDConvertFragment;-><init>()V

    .line 28
    .local v0, fragment:Lcom/htc/album/helper/ThreeDConvertFragment;
    const-class v3, Lcom/htc/album/helper/ThreeDConvertFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 29
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 30
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/htc/album/helper/ThreeDConvert;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 36
    .local v1, fragmentManager:Landroid/app/FragmentManager;
    const-class v2, Lcom/htc/album/helper/ThreeDConvertFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 37
    .local v0, fragment:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Landroid/app/Fragment;->onDestroy()V

    .line 41
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 42
    return-void
.end method
