.class public Lcom/android/camera/menu/MenuItem$ItemViewInfo;
.super Ljava/lang/Object;
.source "MenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/menu/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ItemViewInfo"
.end annotation


# instance fields
.field public checkBox:Lcom/htc/widget/HtcCheckBox;

.field public checkIcon:Landroid/widget/ImageView;

.field public expandButton:Lcom/htc/widget/HtcIndicatorButton;

.field public iconImageView:Landroid/widget/ImageView;

.field public radioButton:Lcom/htc/widget/HtcRadioButton;

.field public summaryTextView:Landroid/widget/TextView;

.field public titleTextView:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
