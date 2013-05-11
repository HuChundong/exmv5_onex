.class public Lcom/android/internal/view/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ListMenuItemView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuView$ItemView;


# static fields
.field private static final TAG:Ljava/lang/String; = "ListMenuItemView"


# instance fields
.field private HtcCheckBoxResId:I

.field private isHtcStyle:Z

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mForceShowIcon:Z

.field private mIconView:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mMenuType:I

.field private mPreserveIconSpacing:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mResource:Landroid/content/res/Resources;

.field private mShortcutView:Landroid/widget/TextView;

.field private mTextAppearance:I

.field private mTextAppearanceContext:Landroid/content/Context;

.field private mTitleView:Landroid/widget/TextView;

.field private tmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/view/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iput v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->HtcCheckBoxResId:I

    .line 333
    iput-boolean v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->isHtcStyle:Z

    .line 70
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mResource:Landroid/content/res/Resources;

    .line 72
    sget-object v1, Lcom/android/internal/R$styleable;->MenuView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 77
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    .line 79
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 81
    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    .line 83
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    return-void
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private insertCheckBox()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 273
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 274
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x1090060

    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-static {p0, v1}, Lcom/android/internal/view/menu/ListMenuItemView$Injector;->insertCheckBox(Lcom/android/internal/view/menu/ListMenuItemView;Landroid/widget/CheckBox;)Z

    move-result v1

    if-eqz v1, :cond_miui_0

    return-void

    :cond_miui_0

    .line 279
    iget-boolean v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->isHtcStyle:Z

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mResource:Landroid/content/res/Resources;

    const-string v2, "btn_check"

    const-string v3, "drawable"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->HtcCheckBoxResId:I

    .line 298
    iget v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->HtcCheckBoxResId:I

    if-eqz v1, :cond_2

    .line 299
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    iget v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->HtcCheckBoxResId:I

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 300
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 308
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ListMenuItemView;->addView(Landroid/view/View;)V

    .line 310
    iget-boolean v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->isHtcStyle:Z

    if-eqz v1, :cond_1

    .line 311
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getPaddingRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getPaddingBottom()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->tmpRect:Landroid/graphics/Rect;

    .line 315
    :cond_1
    return-void

    .line 302
    :cond_2
    const-string v1, "ListMenuItemView"

    const-string v2, "res id not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private insertIconView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 258
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 259
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x1090061

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 261
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/view/menu/ListMenuItemView;->addView(Landroid/view/View;I)V

    .line 262
    return-void
.end method

.method private insertRadioButton()V
    .locals 3

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 266
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x1090063

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 269
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-static {p0, v1}, Lcom/android/internal/view/menu/ListMenuItemView$Injector;->insertRadioButton(Lcom/android/internal/view/menu/ListMenuItemView;Landroid/widget/RadioButton;)Z

    move-result v1

    if-eqz v1, :cond_miui_0

    return-void

    :cond_miui_0
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ListMenuItemView;->addView(Landroid/view/View;)V

    .line 270
    return-void
.end method


# virtual methods
.method public enableHtcStyle(Z)V
    .locals 7
    .parameter "enable"

    .prologue
    .line 337
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->isHtcStyle:Z

    .line 338
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 339
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mResource:Landroid/content/res/Resources;

    const-string v4, "htc_list_item_height"

    const-string v5, "dimen"

    const-string v6, "com.htc"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 341
    .local v2, resId:I
    if-eqz v2, :cond_2

    .line 342
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 343
    .local v0, height:I
    if-eqz v1, :cond_1

    .line 344
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v0, :cond_0

    .line 345
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 353
    .end local v0           #height:I
    :cond_0
    :goto_0
    return-void

    .line 348
    .restart local v0       #height:I
    :cond_1
    const-string v3, "ListMenuItemView"

    const-string v4, "LayoutParams is null.!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 351
    .end local v0           #height:I
    :cond_2
    const-string v3, "ListMenuItemView"

    const-string v4, " Can\'t not find resource.!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getItemData()Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V
    .locals 2
    .parameter "itemData"
    .parameter "menuType"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 107
    iput p2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mMenuType:I

    .line 109
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->setVisibility(I)V

    .line 111
    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/android/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->setCheckable(Z)V

    .line 113
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getShortcut()C

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/menu/ListMenuItemView;->setShortcut(ZC)V

    .line 114
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 115
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->setEnabled(Z)V

    .line 116
    return-void

    .line 109
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 92
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 94
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 97
    iget v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 102
    :cond_0
    const v0, 0x10202d2

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    .line 103
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 246
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 249
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 250
    .local v0, iconLp:Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_0

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gtz v2, :cond_0

    .line 251
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 254
    .end local v0           #iconLp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 255
    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 8
    .parameter "checkable"

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x8

    .line 137
    if-nez p1, :cond_1

    iget-object v5, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v5, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v5, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 147
    iget-object v5, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v5, :cond_2

    .line 148
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->insertRadioButton()V

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 151
    .local v0, compoundButton:Landroid/widget/CompoundButton;
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 160
    .local v2, otherCompoundButton:Landroid/widget/CompoundButton;
    :goto_1
    if-eqz p1, :cond_8

    .line 161
    iget-object v5, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 163
    iget-object v5, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v1

    invoke-static {p0, v5, v1}, Lcom/android/internal/view/menu/ListMenuItemView$Injector;->checkTextColor(Lcom/android/internal/view/menu/ListMenuItemView;Landroid/widget/TextView;Z)V

    if-eqz p1, :cond_7

    move v1, v3

    .line 164
    .local v1, newVisibility:I
    :goto_2
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v5

    if-eq v5, v1, :cond_3

    .line 165
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 168
    :cond_3
    iget-object v5, p0, Lcom/android/internal/view/menu/ListMenuItemView;->tmpRect:Landroid/graphics/Rect;

    if-eqz v5, :cond_4

    .line 169
    iget-object v5, p0, Lcom/android/internal/view/menu/ListMenuItemView;->tmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/internal/view/menu/ListMenuItemView;->tmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/internal/view/menu/ListMenuItemView;->tmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v5, v6, v3, v7}, Lcom/android/internal/view/menu/ListMenuItemView;->setPadding(IIII)V

    .line 173
    :cond_4
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 174
    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_0

    .line 153
    .end local v0           #compoundButton:Landroid/widget/CompoundButton;
    .end local v1           #newVisibility:I
    .end local v2           #otherCompoundButton:Landroid/widget/CompoundButton;
    :cond_5
    iget-object v5, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v5, :cond_6

    .line 154
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->insertCheckBox()V

    .line 156
    :cond_6
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 157
    .restart local v0       #compoundButton:Landroid/widget/CompoundButton;
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .restart local v2       #otherCompoundButton:Landroid/widget/CompoundButton;
    goto :goto_1

    :cond_7
    move v1, v4

    .line 163
    goto :goto_2

    .line 177
    :cond_8
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v3, :cond_9

    .line 178
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 180
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->tmpRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_9

    .line 181
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->tmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/internal/view/menu/ListMenuItemView;->tmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/internal/view/menu/ListMenuItemView;->tmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/android/internal/view/menu/ListMenuItemView;->tmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v3, v5, v6, v7}, Lcom/android/internal/view/menu/ListMenuItemView;->setPadding(IIII)V

    .line 184
    :cond_9
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public setChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->insertRadioButton()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .local v0, compoundButton:Landroid/widget/CompoundButton;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-static {p0, v1, p1}, Lcom/android/internal/view/menu/ListMenuItemView$Injector;->checkTextColor(Lcom/android/internal/view/menu/ListMenuItemView;Landroid/widget/TextView;Z)V

    return-void

    .end local v0           #compoundButton:Landroid/widget/CompoundButton;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->insertCheckBox()V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .restart local v0       #compoundButton:Landroid/widget/CompoundButton;
    goto :goto_0
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .parameter "forceShow"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    iput-boolean p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 120
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "icon"

    .prologue
    const/4 v1, 0x0

    .line 220
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->shouldShowIcon()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 221
    .local v0, showIcon:Z
    :goto_0
    if-nez v0, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v2, :cond_3

    .line 242
    .end local p1
    :cond_1
    :goto_1
    return-void

    .end local v0           #showIcon:Z
    .restart local p1
    :cond_2
    move v0, v1

    .line 220
    goto :goto_0

    .line 225
    .restart local v0       #showIcon:Z
    :cond_3
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_4

    if-nez p1, :cond_4

    iget-boolean v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_1

    .line 229
    :cond_4
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_5

    .line 230
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->insertIconView()V

    .line 233
    :cond_5
    if-nez p1, :cond_6

    iget-boolean v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_8

    .line 234
    :cond_6
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .end local p1
    :goto_2
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 237
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 234
    .restart local p1
    :cond_7
    const/4 p1, 0x0

    goto :goto_2

    .line 240
    :cond_8
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setShortcut(ZC)V
    .locals 3
    .parameter "showShortcut"
    .parameter "shortcutKey"

    .prologue
    .line 207
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 210
    .local v0, newVisibility:I
    :goto_0
    if-nez v0, :cond_0

    .line 211
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 215
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    :cond_1
    return-void

    .line 207
    .end local v0           #newVisibility:I
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "title"

    .prologue
    const/16 v1, 0x8

    .line 123
    if-eqz p1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    return v0
.end method
