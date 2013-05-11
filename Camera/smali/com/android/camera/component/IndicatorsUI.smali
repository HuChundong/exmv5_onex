.class public Lcom/android/camera/component/IndicatorsUI;
.super Lcom/android/camera/component/UIComponent;
.source "IndicatorsUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/IndicatorsUI$22;
    }
.end annotation


# static fields
.field private static final MSG_HIDE_REMAINING_COUNTER:I = 0x2

.field private static final MSG_SHOW_REMAINING_COUNTER:I = 0x1

.field public static final NAME:Ljava/lang/String; = "Indicators"

.field private static final REMAINING_COUNTER_TIMEOUT:I = 0x1388


# instance fields
.field private final isRemainingCounterVisible:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_AutoSceneIndicator:Landroid/widget/TextView;

.field private m_AutoSceneIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_BubbleToastHandle:Lcom/android/camera/Handle;

.field private m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

.field private m_EffectControlUI:Lcom/android/camera/effect/IEffectControlUI;

.field private m_MuteIndicator:Landroid/widget/ImageView;

.field private m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_PhotoRemainingCounter:Landroid/widget/TextView;

.field private m_RemainingCounterContainer:Landroid/view/View;

.field private m_RemainingCounterRotateContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_SelfTimerCounter:Landroid/widget/ImageView;

.field private m_SelfTimerCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_SelfTimerIndicator:Landroid/widget/ImageView;

.field private m_SelfTimerIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_VideoRemainingCounter:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Indicators"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    const-string v0, "IndicatorsUI.IsRemainingCounterVisible"

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->isRemainingCounterVisible:Lcom/android/camera/property/Property;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/IndicatorsUI;)Lcom/android/camera/property/Property;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->isRemainingCounterVisible:Lcom/android/camera/property/Property;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/IndicatorsUI;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/IndicatorsUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/IndicatorsUI;->updateSelfTimerIndicator()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/component/IndicatorsUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/IndicatorsUI;->updateMuteIndicator()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/component/IndicatorsUI;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/IndicatorsUI;->updateTapCaptureBubbleToast(ZZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/component/IndicatorsUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/IndicatorsUI;->showSelfTimerCounter(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/component/IndicatorsUI;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerCounter:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/component/IndicatorsUI;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/component/IndicatorsUI;->getSelfTimerCounterImage(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/component/IndicatorsUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/IndicatorsUI;->showRemainingCounter()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/component/IndicatorsUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/IndicatorsUI;->updateTapCaptureBubbleToast()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/component/IndicatorsUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/component/IndicatorsUI;->updateIndicatorOrientation(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/IndicatorsUI;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/component/IndicatorsUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/camera/component/IndicatorsUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/component/IndicatorsUI;J)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/IndicatorsUI;->convertToRemainingTimeString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/component/IndicatorsUI;->setIndicatorVisibility(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/component/IndicatorsUI;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/IndicatorsUI;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/IndicatorsUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/IndicatorsUI;->hideRemainingCounter(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/component/IndicatorsUI;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_AutoSceneIndicator:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/IndicatorsUI;->updateRemainingCounterLayout(Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/component/IndicatorsUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/IndicatorsUI;->showIndicators()V

    return-void
.end method

.method private convertToRemainingTimeString(J)Ljava/lang/String;
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x3c

    rem-long v4, p1, v8

    div-long v6, p1, v8

    rem-long v2, v6, v8

    const-wide/16 v6, 0xe10

    div-long v0, p1, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    const-string v6, "%02d:%02d"

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_0
    const-string v6, "%02d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private getSelfTimerCounterImage(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f020030

    goto :goto_0

    :pswitch_1
    const v0, 0x7f020032

    goto :goto_0

    :pswitch_2
    const v0, 0x7f020033

    goto :goto_0

    :pswitch_3
    const v0, 0x7f020034

    goto :goto_0

    :pswitch_4
    const v0, 0x7f020035

    goto :goto_0

    :pswitch_5
    const v0, 0x7f020036

    goto :goto_0

    :pswitch_6
    const v0, 0x7f020037

    goto :goto_0

    :pswitch_7
    const v0, 0x7f020038

    goto :goto_0

    :pswitch_8
    const v0, 0x7f020039

    goto :goto_0

    :pswitch_9
    const v0, 0x7f020031

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private hideRemainingCounter(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/component/IndicatorsUI;->removeMessages(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/component/IndicatorsUI;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/camera/component/IndicatorsUI$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/IndicatorsUI$1;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method private rotateIndicator(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/android/camera/rotate/UIRotation;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/component/IndicatorsUI;->updateIndicatorOrientation(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/android/camera/rotate/UIRotation;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/camera/component/IndicatorsUI$20;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/component/IndicatorsUI$20;-><init>(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;)V

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/camera/component/IndicatorsUI;->showAlphaRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/component/CameraCompoment$AlphaRotateAnimationCallback;)V

    goto :goto_0
.end method

.method private setIndicatorVisibility(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/component/IndicatorsUI;->updateIndicatorOrientation(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/android/camera/rotate/UIRotation;)V

    :cond_0
    invoke-virtual {p0, p1, p3, p3}, Lcom/android/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZ)V

    :cond_1
    return-void
.end method

.method private showIndicators()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->effectPanelState:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/component/IndicatorsUI;->setIndicatorVisibility(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/component/IndicatorsUI;->setIndicatorVisibility(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V

    goto :goto_0
.end method

.method private showRemainingCounter()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/component/IndicatorsUI$21;

    invoke-direct {v1, p0}, Lcom/android/camera/component/IndicatorsUI$21;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showRemainingCounter(Ljava/util/Hashtable;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/android/camera/CameraMode;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/camera/component/IndicatorsUI;->removeMessages(I)V

    invoke-virtual {p0, v4}, Lcom/android/camera/component/IndicatorsUI;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v8

    iget-object v0, v8, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/camera/component/IndicatorsUI$22;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v0, v8, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/RecordingState;

    invoke-virtual {v0}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :cond_1
    :pswitch_0
    iget-object v0, v8, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v6, 0x64

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/component/IndicatorsUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;J)Z

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_PhotoRemainingCounter:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v9, 0x1

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_PhotoRemainingCounter:Landroid/widget/TextView;

    sget-object v0, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_VideoRemainingCounter:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v9, 0x1

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_VideoRemainingCounter:Landroid/widget/TextView;

    sget-object v0, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz v9, :cond_5

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZ)V

    :goto_1
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p0, v4, v0, v1}, Lcom/android/camera/component/IndicatorsUI;->sendMessage(Lcom/android/camera/component/Component;IJ)Z

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->isRemainingCounterVisible:Lcom/android/camera/property/Property;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v3, v3}, Lcom/android/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showSelfTimerCounter(Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v2, v3, v3}, Lcom/android/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->frontSelfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Duration;

    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerCounter:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/android/camera/component/IndicatorsUI;->getSelfTimerCounterImage(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v2, v5, v5}, Lcom/android/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method private updateIndicatorOrientation(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/component/IndicatorsUI;->updateIndicatorOrientation(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method private updateIndicatorOrientation(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/android/camera/rotate/UIRotation;)V
    .locals 5

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :goto_1
    invoke-virtual {p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p3}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v4

    if-eqz v4, :cond_2

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_2
    invoke-virtual {p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->requestLayout()V

    invoke-virtual {p1, p3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2
.end method

.method private updateMuteIndicator()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v1, v0, Lcom/android/camera/CameraSettings;->recordWithAudio:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v1, v0, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v2, v1}, Lcom/android/camera/component/IndicatorsUI;->updateMuteIndicator(ZZ)V

    return-void
.end method

.method private updateMuteIndicator(ZZ)V
    .locals 6

    iget-object v4, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/CameraType;

    invoke-virtual {v4}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v4

    sget-object v5, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v4, v5, :cond_4

    if-eqz p1, :cond_3

    if-nez v1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_5

    iget-object v4, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object v4, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v5, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v5}, Lcom/android/camera/component/IndicatorsUI;->updateIndicatorOrientation(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;)V

    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    if-eq v4, v5, :cond_6

    const v4, 0x7f0b00b3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const v4, 0x7f0b00b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_3
    iget-object v4, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->requestLayout()V

    goto :goto_0

    :cond_3
    const v0, 0x7f020066

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_6
    const v4, 0x7f0b00b5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const v4, 0x7f0b00b4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3
.end method

.method private updateRemainingCounterLayout(Lcom/android/camera/rotate/UIRotation;)V
    .locals 7

    const v6, 0x7f0b0060

    const/16 v5, 0xc

    const/16 v4, 0xa

    const/4 v2, -0x2

    const/16 v3, 0xe

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget-object v1, Lcom/android/camera/component/IndicatorsUI$22;->$SwitchMap$com$android$camera$rotate$UIRotation:[I

    invoke-virtual {p1}, Lcom/android/camera/rotate/UIRotation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_EffectControlUI:Lcom/android/camera/effect/IEffectControlUI;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_EffectControlUI:Lcom/android/camera/effect/IEffectControlUI;

    iget-object v1, v1, Lcom/android/camera/effect/IEffectControlUI;->effectControlBarState:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/camera/component/IndicatorsUI;->getDimension(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_1
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterRotateContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v1, 0x7f0b0062

    invoke-virtual {p0, v1}, Lcom/android/camera/component/IndicatorsUI;->getDimension(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_EffectControlUI:Lcom/android/camera/effect/IEffectControlUI;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_EffectControlUI:Lcom/android/camera/effect/IEffectControlUI;

    iget-object v1, v1, Lcom/android/camera/effect/IEffectControlUI;->effectControlBarState:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/camera/component/IndicatorsUI;->getDimension(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_3
    const v1, 0x7f0b0061

    invoke-virtual {p0, v1}, Lcom/android/camera/component/IndicatorsUI;->getDimension(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v1, 0x7f0b0062

    invoke-virtual {p0, v1}, Lcom/android/camera/component/IndicatorsUI;->getDimension(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_4
    const v1, 0x7f0b0061

    invoke-virtual {p0, v1}, Lcom/android/camera/component/IndicatorsUI;->getDimension(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateSelfTimerIndicator()V
    .locals 4

    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->mainSelfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Duration;

    :goto_1
    invoke-virtual {v1}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v3, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v3}, Lcom/android/camera/component/IndicatorsUI;->updateIndicatorOrientation(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->frontSelfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Duration;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method

.method private updateTapCaptureBubbleToast()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/camera/component/IndicatorsUI;->updateTapCaptureBubbleToast(ZZ)V

    return-void
.end method

.method private updateTapCaptureBubbleToast(ZZ)V
    .locals 6

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->isTapCaptureFrontEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "updateTapCaptureBubbleToast() - Not front camera or Tapcapture is disabled or Video Mode, hide tap capture toast."

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/camera/component/IndicatorsUI;->updateTapCaptureBubbleToast(ZZ)V

    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_BubbleToastHandle:Lcom/android/camera/Handle;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "updateTapCaptureBubbleToast() - No need to update."

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->selfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Duration;

    invoke-virtual {v0}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    const v1, 0x7f0a007d

    :goto_1
    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

    invoke-virtual {v2, v1}, Lcom/android/camera/IBubbleToastManager;->showBubbleToast(I)Lcom/android/camera/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_BubbleToastHandle:Lcom/android/camera/Handle;

    goto :goto_0

    :cond_3
    const v1, 0x7f0a007e

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "updateTapCaptureBubbleToast() - No IBubbleToastManager interface"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

    iget-object v3, p0, Lcom/android/camera/component/IndicatorsUI;->m_BubbleToastHandle:Lcom/android/camera/Handle;

    invoke-virtual {v2, v3}, Lcom/android/camera/IBubbleToastManager;->closeBubbleToast(Lcom/android/camera/Handle;)V

    :cond_6
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_BubbleToastHandle:Lcom/android/camera/Handle;

    goto :goto_0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_EffectControlUI:Lcom/android/camera/effect/IEffectControlUI;

    invoke-static {p0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/component/IndicatorsUI;->hideRemainingCounter(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Hashtable;

    invoke-direct {p0, v0}, Lcom/android/camera/component/IndicatorsUI;->showRemainingCounter(Ljava/util/Hashtable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 20

    invoke-super/range {p0 .. p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    const-class v16, Lcom/android/camera/effect/IEffectControlUI;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/camera/component/IndicatorsUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/camera/effect/IEffectControlUI;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/IndicatorsUI;->m_EffectControlUI:Lcom/android/camera/effect/IEffectControlUI;

    const-class v16, Lcom/android/camera/IBubbleToastManager;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/camera/component/IndicatorsUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/camera/IBubbleToastManager;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/IndicatorsUI;->m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI;->isRemainingCounterVisible:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    iget-object v0, v6, Lcom/android/camera/HTCCamera;->isRemainingCounterVisible:Lcom/android/camera/property/Property;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->getCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v5

    const v16, 0x7f080081

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->getFrontCameraPosition()Lcom/android/camera/DisplayDevice$FrontCameraPosition;

    move-result-object v10

    sget-object v16, Lcom/android/camera/component/IndicatorsUI$22;->$SwitchMap$com$android$camera$DisplayDevice$FrontCameraPosition:[I

    invoke-virtual {v10}, Lcom/android/camera/DisplayDevice$FrontCameraPosition;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    :goto_0
    const v16, 0x7f0b00b1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/camera/component/IndicatorsUI;->getDimension(I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/rotate/RotateRelativeLayout;->requestLayout()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object/from16 v16, v0

    const v17, 0x7f080082

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerCounter:Landroid/widget/ImageView;

    :cond_0
    const v16, 0x7f08008c

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/IndicatorsUI;->m_AutoSceneIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI;->m_AutoSceneIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI;->m_AutoSceneIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object/from16 v16, v0

    const v17, 0x7f08008d

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/IndicatorsUI;->m_AutoSceneIndicator:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI;->m_AutoSceneIndicator:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const v17, -0xff0100

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI;->m_AutoSceneIndicator:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->autoDetectedScene:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/camera/AutoDetectedScene;

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/AutoDetectedScene;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI;->m_AutoSceneIndicator:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    const v16, 0x7f080083

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object/from16 v16, v0

    const v17, 0x7f080084

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;

    const v16, 0x7f080085

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterRotateContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterRotateContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object/from16 v16, v0

    const v17, 0x7f080086

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f08008a

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f080087

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f080089

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v14

    iget-boolean v0, v14, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    const v16, 0x7f08008b

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/IndicatorsUI;->m_PhotoRemainingCounter:Landroid/widget/TextView;

    iget-boolean v0, v14, Lcom/android/camera/CameraStartMode;->supportsVideoMode:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-boolean v0, v14, Lcom/android/camera/CameraStartMode;->supportsVideoMode:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    const v16, 0x7f080088

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/IndicatorsUI;->m_VideoRemainingCounter:Landroid/widget/TextView;

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/IndicatorsUI;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/camera/component/IndicatorsUI;->updateRemainingCounterLayout(Lcom/android/camera/rotate/UIRotation;)V

    new-instance v7, Lcom/android/camera/component/IndicatorsUI$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/camera/component/IndicatorsUI$2;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    iget-object v0, v6, Lcom/android/camera/HTCCamera;->autoDetectedScene:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/camera/component/IndicatorsUI$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/component/IndicatorsUI$3;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v0, v6, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v0, v6, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI;->m_EffectControlUI:Lcom/android/camera/effect/IEffectControlUI;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI;->m_EffectControlUI:Lcom/android/camera/effect/IEffectControlUI;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/camera/effect/IEffectControlUI;->effectControlBarState:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/camera/component/IndicatorsUI$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/component/IndicatorsUI$4;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    :cond_4
    iget-object v0, v6, Lcom/android/camera/HTCCamera;->effectPanelState:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/camera/component/IndicatorsUI$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/component/IndicatorsUI$5;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v0, v6, Lcom/android/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/camera/component/IndicatorsUI$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/component/IndicatorsUI$6;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/camera/component/IndicatorsUI$7;

    iget-object v0, v6, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/component/IndicatorsUI$7;-><init>(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/camera/component/IndicatorsUI$8;

    iget-object v0, v6, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/component/IndicatorsUI$8;-><init>(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/camera/component/IndicatorsUI$9;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/component/IndicatorsUI$9;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v0, v6, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/camera/component/IndicatorsUI$10;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/component/IndicatorsUI$10;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v0, v6, Lcom/android/camera/HTCCamera;->selfTimerCountDownEvent:Lcom/android/camera/event/Event;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/camera/component/IndicatorsUI$11;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/component/IndicatorsUI$11;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/camera/component/IndicatorsUI$12;

    iget-object v0, v6, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/component/IndicatorsUI$12;-><init>(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/camera/component/IndicatorsUI$13;

    iget-object v0, v6, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/camera/RecordingState;->Stopping:Lcom/android/camera/RecordingState;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/component/IndicatorsUI$13;-><init>(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/camera/component/IndicatorsUI$14;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/camera/component/IndicatorsUI$14;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/IndicatorsUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v13

    iget-object v0, v13, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v0, v13, Lcom/android/camera/CameraSettings;->recordWithAudio:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    new-instance v12, Lcom/android/camera/component/IndicatorsUI$15;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/camera/component/IndicatorsUI$15;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    iget-object v0, v6, Lcom/android/camera/HTCCamera;->selfTimerInterval:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/camera/component/IndicatorsUI$16;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/component/IndicatorsUI$16;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v0, v13, Lcom/android/camera/CameraSettings;->isTapCaptureFrontEnabled:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/camera/component/IndicatorsUI$17;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/component/IndicatorsUI$17;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v16

    new-instance v17, Lcom/android/camera/component/IndicatorsUI$18;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/android/camera/component/IndicatorsUI$18;-><init>(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/property/PropertyChangedCallback;)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    const v16, 0x7f0b00b0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/camera/component/IndicatorsUI;->getDimension(I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/16 v16, 0xb

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_0

    :pswitch_1
    const v16, 0x7f0b00b0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/camera/component/IndicatorsUI;->getDimension(I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/16 v16, 0x9

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onEnteringFakeUIRotation(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0

    invoke-virtual {p0, p2, p1}, Lcom/android/camera/component/IndicatorsUI;->onUIRotationChanged(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method protected onExitingFakeUIRotation(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/component/IndicatorsUI;->onUIRotationChanged(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method protected onUIRotationChanged(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/camera/component/IndicatorsUI;->rotateIndicator(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/android/camera/rotate/UIRotation;)V

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/camera/component/IndicatorsUI;->rotateIndicator(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/android/camera/rotate/UIRotation;)V

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_AutoSceneIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_AutoSceneIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, p2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, p2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    new-instance v1, Lcom/android/camera/component/IndicatorsUI$19;

    invoke-direct {v1, p0}, Lcom/android/camera/component/IndicatorsUI$19;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/camera/component/IndicatorsUI;->showAlphaRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/component/CameraCompoment$AlphaRotateAnimationCallback;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-direct {p0, p2}, Lcom/android/camera/component/IndicatorsUI;->updateRemainingCounterLayout(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0
.end method
