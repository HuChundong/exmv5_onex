.class public Lcom/android/camera/menu/MenuItem;
.super Ljava/lang/Object;
.source "MenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/menu/MenuItem$ItemViewInfo;
    }
.end annotation


# instance fields
.field private m_Background:Ljava/lang/Object;

.field private m_Icon:Ljava/lang/Object;

.field private m_Id:I

.field private m_IsChecked:Z

.field private m_IsEnabled:Z

.field private m_IsSelectable:Z

.field private m_IsVisible:Z

.field private m_Items:[Lcom/android/camera/menu/MenuItem;

.field m_MenuListView:Lcom/android/camera/menu/MenuListView;

.field private m_Parent:Lcom/android/camera/menu/MenuItem;

.field private m_Summary:Ljava/lang/Object;

.field private m_Title:Ljava/lang/Object;

.field private final m_VisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/menu/MenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsEnabled:Z

    iput-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsSelectable:Z

    iput-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsVisible:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/menu/MenuItem;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsEnabled:Z

    iput-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsSelectable:Z

    iput-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsVisible:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    iput p3, p0, Lcom/android/camera/menu/MenuItem;->m_Id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_Title:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_Summary:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsEnabled:Z

    iput-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsSelectable:Z

    iput-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsVisible:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/menu/MenuItem;->m_Id:I

    iput-object p1, p0, Lcom/android/camera/menu/MenuItem;->m_Title:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_Summary:Ljava/lang/Object;

    return-void
.end method

.method private getViewDefault(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, p2, p4}, Lcom/android/camera/menu/MenuItem;->getView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;

    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->iconImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Icon:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_5

    iget-object v2, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->iconImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Icon:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->iconImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->radioButton:Lcom/htc/widget/HtcRadioButton;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->radioButton:Lcom/htc/widget/HtcRadioButton;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcRadioButton;->setVisibility(I)V

    :cond_1
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->checkBox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->checkBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcCheckBox;->setVisibility(I)V

    :cond_2
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->checkIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->checkIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->expandButton:Lcom/htc/widget/HtcIndicatorButton;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->expandButton:Lcom/htc/widget/HtcIndicatorButton;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcIndicatorButton;->setVisibility(I)V

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Background:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Background:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_2
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->titleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/menu/MenuItem;->m_Title:Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/android/camera/menu/MenuItem;->setText(Landroid/widget/TextView;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->summaryTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/menu/MenuItem;->m_Summary:Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/android/camera/menu/MenuItem;->setText(Landroid/widget/TextView;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/camera/menu/MenuItem;->m_IsEnabled:Z

    invoke-direct {p0, p4, v1}, Lcom/android/camera/menu/MenuItem;->setEnabled(Landroid/view/View;Z)V

    return-object p4

    :cond_5
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Icon:Ljava/lang/Object;

    instance-of v1, v1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    iget-object v2, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->iconImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Icon:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->iconImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Icon:Ljava/lang/Object;

    instance-of v1, v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    iget-object v2, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->iconImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Icon:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->iconImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_7
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->iconImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_8
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->expandButton:Lcom/htc/widget/HtcIndicatorButton;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->expandButton:Lcom/htc/widget/HtcIndicatorButton;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcIndicatorButton;->setVisibility(I)V

    goto :goto_1

    :cond_9
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Background:Ljava/lang/Object;

    instance-of v1, v1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Background:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_a
    const/4 v1, 0x2

    if-ne p3, v1, :cond_b

    const v1, 0x7f02009e

    invoke-virtual {p4, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    :cond_b
    invoke-virtual {p4, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2
.end method

.method private setEnabled(Landroid/view/View;Z)V
    .locals 3

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/camera/menu/MenuItem;->setEnabled(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/Object;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/android/camera/menu/MenuItem;->m_Id:I

    return v0
.end method

.method public final getItems()[Lcom/android/camera/menu/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    return-object v0
.end method

.method public getMenuListView()Lcom/android/camera/menu/MenuListView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_MenuListView:Lcom/android/camera/menu/MenuListView;

    return-object v0
.end method

.method public final getParent()Lcom/android/camera/menu/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_Parent:Lcom/android/camera/menu/MenuItem;

    return-object v0
.end method

.method final getView(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/camera/menu/MenuItem;->getViewOverride(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final getView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/android/camera/menu/MenuItem$ItemViewInfo;

    if-eqz v2, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    const v2, 0x7f030017

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;

    invoke-direct {v0}, Lcom/android/camera/menu/MenuItem$ItemViewInfo;-><init>()V

    const v2, 0x7f080069

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->iconImageView:Landroid/widget/ImageView;

    const v2, 0x7f08007a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->titleTextView:Landroid/widget/TextView;

    const v2, 0x7f0800b0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->summaryTextView:Landroid/widget/TextView;

    const v2, 0x7f0800b1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcRadioButton;

    iput-object v2, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->radioButton:Lcom/htc/widget/HtcRadioButton;

    const v2, 0x7f080025

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcCheckBox;

    iput-object v2, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->checkBox:Lcom/htc/widget/HtcCheckBox;

    const v2, 0x202000d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcIndicatorButton;

    iput-object v2, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->expandButton:Lcom/htc/widget/HtcIndicatorButton;

    const v2, 0x7f0800b2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->checkIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    return-object p2

    :cond_2
    const/4 p2, 0x0

    goto :goto_0
.end method

.method protected getViewOverride(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/menu/MenuItem;->getViewDefault(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVisibleItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/menu/MenuItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final hasVisibleItems()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsChecked:Z

    return v0
.end method

.method public isCustomView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsEnabled:Z

    return v0
.end method

.method public final isSelectable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsSelectable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsVisible:Z

    return v0
.end method

.method protected final notifyItemContentClicked()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_MenuListView:Lcom/android/camera/menu/MenuListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_MenuListView:Lcom/android/camera/menu/MenuListView;

    invoke-virtual {v0, p0}, Lcom/android/camera/menu/MenuListView;->notifyItemContentClicked(Lcom/android/camera/menu/MenuItem;)V

    :cond_0
    return-void
.end method

.method protected final notifyItemsChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_MenuListView:Lcom/android/camera/menu/MenuListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_MenuListView:Lcom/android/camera/menu/MenuListView;

    invoke-virtual {v0}, Lcom/android/camera/menu/MenuListView;->notifyItemsChanged()V

    :cond_0
    return-void
.end method

.method protected final notifyItemsInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_MenuListView:Lcom/android/camera/menu/MenuListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_MenuListView:Lcom/android/camera/menu/MenuListView;

    invoke-virtual {v0}, Lcom/android/camera/menu/MenuListView;->notifyItemsInvalidated()V

    :cond_0
    return-void
.end method

.method protected onClicked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/menu/MenuItem;->updateContent()V

    :cond_0
    return-void
.end method

.method public setBackground(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_Background:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/camera/menu/MenuItem;->notifyItemsInvalidated()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsChecked:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera/menu/MenuItem;->m_IsChecked:Z

    iget-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/menu/MenuItem;->notifyItemsInvalidated()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera/menu/MenuItem;->m_IsEnabled:Z

    iget-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/menu/MenuItem;->notifyItemsInvalidated()V

    :cond_0
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_Icon:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/camera/menu/MenuItem;->notifyItemsInvalidated()V

    return-void
.end method

.method public final setId(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/menu/MenuItem;->m_Id:I

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/menu/MenuItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Lcom/android/camera/menu/MenuItem;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/camera/menu/MenuItem;->setItems([Lcom/android/camera/menu/MenuItem;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    check-cast v1, [Lcom/android/camera/menu/MenuItem;

    invoke-virtual {p0, v1}, Lcom/android/camera/menu/MenuItem;->setItems([Lcom/android/camera/menu/MenuItem;)V

    goto :goto_0
.end method

.method public setItems([Lcom/android/camera/menu/MenuItem;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/android/camera/menu/MenuItem;->setMenuListView(Lcom/android/camera/menu/MenuListView;)V

    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    aget-object v1, v1, v0

    iput-object v2, v1, Lcom/android/camera/menu/MenuItem;->m_Parent:Lcom/android/camera/menu/MenuItem;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    if-eqz p1, :cond_1

    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_1

    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/android/camera/menu/MenuItem;->m_MenuListView:Lcom/android/camera/menu/MenuListView;

    invoke-virtual {v1, v2}, Lcom/android/camera/menu/MenuItem;->setMenuListView(Lcom/android/camera/menu/MenuListView;)V

    aget-object v1, p1, v0

    iput-object p0, v1, Lcom/android/camera/menu/MenuItem;->m_Parent:Lcom/android/camera/menu/MenuItem;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/menu/MenuItem;->notifyItemsChanged()V

    return-void
.end method

.method final setMenuListView(Lcom/android/camera/menu/MenuListView;)V
    .locals 2

    iput-object p1, p0, Lcom/android/camera/menu/MenuItem;->m_MenuListView:Lcom/android/camera/menu/MenuListView;

    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/camera/menu/MenuItem;->setMenuListView(Lcom/android/camera/menu/MenuListView;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/menu/MenuItem;->m_IsSelectable:Z

    return-void
.end method

.method public setSummary(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_Summary:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/camera/menu/MenuItem;->notifyItemsInvalidated()V

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/menu/MenuItem;->m_Summary:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/camera/menu/MenuItem;->notifyItemsInvalidated()V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_Title:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/camera/menu/MenuItem;->notifyItemsInvalidated()V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/menu/MenuItem;->m_Title:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/camera/menu/MenuItem;->notifyItemsInvalidated()V

    return-void
.end method

.method public setVisibility(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera/menu/MenuItem;->m_IsVisible:Z

    invoke-virtual {p0, p1}, Lcom/android/camera/menu/MenuItem;->onVisibilityChanged(Z)V

    invoke-virtual {p0}, Lcom/android/camera/menu/MenuItem;->notifyItemsChanged()V

    :cond_0
    return-void
.end method

.method public updateContent()V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v1}, Lcom/android/camera/menu/MenuItem;->updateContent()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final updateVisibleItems(Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    aget-object v1, v2, v0

    invoke-virtual {v1}, Lcom/android/camera/menu/MenuItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/camera/menu/MenuItem;->updateVisibleItems(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
