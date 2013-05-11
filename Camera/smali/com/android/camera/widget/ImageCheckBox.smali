.class public Lcom/android/camera/widget/ImageCheckBox;
.super Landroid/widget/LinearLayout;
.source "ImageCheckBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/ImageCheckBox$OnClickChangedListener;
    }
.end annotation


# instance fields
.field private mCheckBoxContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_Checkbox:Lcom/htc/widget/HtcCheckBox;

.field private m_Checked:Z

.field private m_Context:Landroid/content/Context;

.field private m_ImageBtn:Landroid/widget/ImageView;

.field private m_OnClickChangedListener:Lcom/android/camera/widget/ImageCheckBox$OnClickChangedListener;

.field private m_PadingWidth:I

.field private m_PictureUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_PadingWidth:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->mCheckBoxContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object p1, p0, Lcom/android/camera/widget/ImageCheckBox;->m_Context:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_Checked:Z

    invoke-virtual {p0}, Lcom/android/camera/widget/ImageCheckBox;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/widget/ImageCheckBox;)Lcom/htc/widget/HtcCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_Checkbox:Lcom/htc/widget/HtcCheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/widget/ImageCheckBox;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_Checked:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/widget/ImageCheckBox;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/widget/ImageCheckBox;->m_Checked:Z

    return p1
.end method


# virtual methods
.method public addImageUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/ImageCheckBox;->m_PictureUri:Landroid/net/Uri;

    return-void
.end method

.method public checkClick(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/widget/ImageCheckBox;->setStatus(Z)V

    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_OnClickChangedListener:Lcom/android/camera/widget/ImageCheckBox$OnClickChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_OnClickChangedListener:Lcom/android/camera/widget/ImageCheckBox$OnClickChangedListener;

    invoke-interface {v0, p0}, Lcom/android/camera/widget/ImageCheckBox$OnClickChangedListener;->onClickChanged(Lcom/android/camera/widget/ImageCheckBox;)V

    :cond_0
    return-void
.end method

.method public getCheckBox()Lcom/htc/widget/HtcCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_Checkbox:Lcom/htc/widget/HtcCheckBox;

    return-object v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_PictureUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_PictureUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_ImageBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method public initialize()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/camera/widget/ImageCheckBox;->m_Context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030003

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v2, 0x7f080023

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/widget/ImageCheckBox;->m_ImageBtn:Landroid/widget/ImageView;

    const v2, 0x7f080025

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcCheckBox;

    iput-object v2, p0, Lcom/android/camera/widget/ImageCheckBox;->m_Checkbox:Lcom/htc/widget/HtcCheckBox;

    const v2, 0x7f080024

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/widget/ImageCheckBox;->mCheckBoxContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ImageCheckBox;->addView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/camera/widget/ImageCheckBox;->m_PictureUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/camera/widget/ImageCheckBox;->setStatus(Z)V

    iget-object v2, p0, Lcom/android/camera/widget/ImageCheckBox;->m_ImageBtn:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/camera/widget/ImageCheckBox$1;

    invoke-direct {v3, p0}, Lcom/android/camera/widget/ImageCheckBox$1;-><init>(Lcom/android/camera/widget/ImageCheckBox;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_Checkbox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v0}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setCheck(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_Checkbox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/android/camera/widget/ImageCheckBox;->m_Checked:Z

    invoke-virtual {p0, p1}, Lcom/android/camera/widget/ImageCheckBox;->setStatus(Z)V

    :cond_0
    return-void
.end method

.method public setCheckBoxOritation(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->mCheckBoxContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    return-void
.end method

.method public setFocus(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_ImageBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_ImageBtn:Landroid/widget/ImageView;

    const-string v1, "com.htc.R.drawable.common_preset_frame_pressed"

    invoke-static {v1}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_ImageBtn:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/camera/widget/ImageCheckBox;->m_PadingWidth:I

    iget v2, p0, Lcom/android/camera/widget/ImageCheckBox;->m_PadingWidth:I

    iget v3, p0, Lcom/android/camera/widget/ImageCheckBox;->m_PadingWidth:I

    iget v4, p0, Lcom/android/camera/widget/ImageCheckBox;->m_PadingWidth:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_ImageBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setImage(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_ImageBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_ImageBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setOnClickChangedListener(Lcom/android/camera/widget/ImageCheckBox$OnClickChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/ImageCheckBox;->m_OnClickChangedListener:Lcom/android/camera/widget/ImageCheckBox$OnClickChangedListener;

    return-void
.end method

.method public setStatus(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_Checkbox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_Checkbox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method
