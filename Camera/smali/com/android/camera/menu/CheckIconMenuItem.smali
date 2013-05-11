.class public Lcom/android/camera/menu/CheckIconMenuItem;
.super Lcom/android/camera/menu/MenuItem;
.source "CheckIconMenuItem.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/menu/MenuItem;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected getViewOverride(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/menu/MenuItem;->getViewOverride(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;

    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->checkIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->checkIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/camera/menu/CheckIconMenuItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->checkIcon:Landroid/widget/ImageView;

    const v2, 0x7f0200b3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    return-object p4

    :cond_1
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->checkIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected onClicked()Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/menu/CheckIconMenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/menu/CheckIconMenuItem;->setChecked(Z)V

    return v1

    :cond_0
    move v0, v1

    goto :goto_0
.end method
