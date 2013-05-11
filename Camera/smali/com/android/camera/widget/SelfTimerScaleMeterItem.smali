.class public Lcom/android/camera/widget/SelfTimerScaleMeterItem;
.super Lcom/android/camera/widget/ScaleMeterItem;
.source "SelfTimerScaleMeterItem.java"


# static fields
.field public static final SCALE_LEVEL_NUMBER_MAX:I = 0x3

.field public static final SCALE_LEVEL_NUMBER_MIN:I


# instance fields
.field private final m_SelfTimerValues:[Lcom/android/camera/Duration;

.field private m_TextViewValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v2, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    invoke-direct {p0, p1, v4, v3}, Lcom/android/camera/widget/ScaleMeterItem;-><init>(Landroid/content/Context;II)V

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "0  "

    aput-object v1, v0, v3

    const-string v1, " 2"

    aput-object v1, v0, v5

    const-string v1, "   5"

    aput-object v1, v0, v6

    const-string v1, "10"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/camera/widget/SelfTimerScaleMeterItem;->m_TextViewValues:[Ljava/lang/String;

    new-array v0, v2, [Lcom/android/camera/Duration;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/Duration;->fromSeconds(J)Lcom/android/camera/Duration;

    move-result-object v1

    aput-object v1, v0, v3

    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Lcom/android/camera/Duration;->fromSeconds(J)Lcom/android/camera/Duration;

    move-result-object v1

    aput-object v1, v0, v5

    const-wide/16 v1, 0x5

    invoke-static {v1, v2}, Lcom/android/camera/Duration;->fromSeconds(J)Lcom/android/camera/Duration;

    move-result-object v1

    aput-object v1, v0, v6

    const-wide/16 v1, 0xa

    invoke-static {v1, v2}, Lcom/android/camera/Duration;->fromSeconds(J)Lcom/android/camera/Duration;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/camera/widget/SelfTimerScaleMeterItem;->m_SelfTimerValues:[Lcom/android/camera/Duration;

    invoke-virtual {p0}, Lcom/android/camera/widget/SelfTimerScaleMeterItem;->getTitleBar()Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/camera/widget/SelfTimerScaleMeterItem;->setTextViews()V

    return-void
.end method

.method private setSelfTimerValue()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/widget/SelfTimerScaleMeterItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {v0}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/widget/SelfTimerScaleMeterItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mainSelfTimerInterval:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/widget/SelfTimerScaleMeterItem;->m_SelfTimerValues:[Lcom/android/camera/Duration;

    invoke-virtual {p0}, Lcom/android/camera/widget/SelfTimerScaleMeterItem;->getLevel()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/widget/SelfTimerScaleMeterItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->frontSelfTimerInterval:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/widget/SelfTimerScaleMeterItem;->m_SelfTimerValues:[Lcom/android/camera/Duration;

    invoke-virtual {p0}, Lcom/android/camera/widget/SelfTimerScaleMeterItem;->getLevel()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setTextViews()V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, -0x2

    iget-object v5, p0, Lcom/android/camera/widget/ScaleMeterItem;->TAG:Ljava/lang/String;

    const-string v6, "setTextViews() - start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/widget/SelfTimerScaleMeterItem;->getScaleTextColumn()Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    :goto_0
    if-gt v0, v9, :cond_1

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/widget/SelfTimerScaleMeterItem;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    invoke-direct {v1, v8, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/camera/widget/SelfTimerScaleMeterItem;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0027

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, p0, Lcom/android/camera/widget/SelfTimerScaleMeterItem;->m_TextViewValues:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/camera/widget/SelfTimerScaleMeterItem;->getScaleTextColumn()Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eq v0, v9, :cond_0

    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/widget/SelfTimerScaleMeterItem;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/high16 v7, 0x3f80

    invoke-direct {v2, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0}, Lcom/android/camera/widget/SelfTimerScaleMeterItem;->getScaleTextColumn()Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/camera/widget/ScaleMeterItem;->TAG:Ljava/lang/String;

    const-string v6, "setTextViews() - end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDegreeImage(I)I
    .locals 4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/camera/widget/ScaleMeterItem;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDegreeImage() - level :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f020091

    goto :goto_0

    :pswitch_1
    const v0, 0x7f020093

    goto :goto_0

    :pswitch_2
    const v0, 0x7f020094

    goto :goto_0

    :pswitch_3
    const v0, 0x7f020092

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onLevelChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/widget/SelfTimerScaleMeterItem;->setSelfTimerValue()V

    invoke-super {p0}, Lcom/android/camera/widget/ScaleMeterItem;->onLevelChanged()V

    return-void
.end method

.method public updateLevel()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/widget/SelfTimerScaleMeterItem;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v2}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/widget/SelfTimerScaleMeterItem;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->mainSelfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Duration;

    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v2

    long-to-int v2, v2

    sparse-switch v2, :sswitch_data_0

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/widget/SelfTimerScaleMeterItem;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->frontSelfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Duration;

    goto :goto_0

    :sswitch_0
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const/4 v1, 0x3

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method
