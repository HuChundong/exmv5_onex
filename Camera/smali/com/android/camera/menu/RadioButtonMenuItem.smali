.class public Lcom/android/camera/menu/RadioButtonMenuItem;
.super Lcom/android/camera/menu/MenuItem;
.source "RadioButtonMenuItem.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/menu/MenuItem;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/menu/MenuItem;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected getViewOverride(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/menu/MenuItem;->getViewOverride(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;

    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->radioButton:Lcom/htc/widget/HtcRadioButton;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->radioButton:Lcom/htc/widget/HtcRadioButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRadioButton;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->radioButton:Lcom/htc/widget/HtcRadioButton;

    invoke-virtual {p0}, Lcom/android/camera/menu/RadioButtonMenuItem;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    :cond_0
    return-object p4
.end method
