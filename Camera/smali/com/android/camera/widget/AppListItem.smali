.class public Lcom/android/camera/widget/AppListItem;
.super Landroid/widget/RelativeLayout;
.source "AppListItem.java"


# instance fields
.field private final m_ColorIcon:Lcom/htc/widget/HtcListItemColorIcon;

.field private final m_TextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03001f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/widget/AppListItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f080069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemColorIcon;

    iput-object v1, p0, Lcom/android/camera/widget/AppListItem;->m_ColorIcon:Lcom/htc/widget/HtcListItemColorIcon;

    const v1, 0x7f08007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/widget/AppListItem;->m_TextView:Landroid/widget/TextView;

    const v1, 0x7f0800b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/AppListItem;->m_ColorIcon:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/AppListItem;->m_TextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
