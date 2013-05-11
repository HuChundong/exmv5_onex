.class public Lcom/android/camera/component/RecordingTimerUI;
.super Lcom/android/camera/component/UIComponent;
.source "RecordingTimerUI.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "Recording Timer"

.field private static final SLOW_MOTION_RATIO:F = 4.0f


# instance fields
.field private m_TimerBackground:Landroid/view/View;

.field private m_TimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_TimerText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3

    const-string v0, "Recording Timer"

    const/4 v1, 0x1

    const v2, 0x7f08004f

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    invoke-virtual {p0}, Lcom/android/camera/component/RecordingTimerUI;->disableAutoInflateView()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/RecordingTimerUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/RecordingTimerUI;->initializeUI()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/RecordingTimerUI;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/RecordingTimerUI;->m_TimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/RecordingTimerUI;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/RecordingTimerUI;->m_TimerText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/RecordingTimerUI;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/RecordingTimerUI;->m_TimerBackground:Landroid/view/View;

    return-object v0
.end method

.method private getTimeString(J)Ljava/lang/String;
    .locals 10

    const-wide/16 v8, 0x3c

    rem-long v4, p1, v8

    div-long v6, p1, v8

    rem-long v2, v6, v8

    const-wide/16 v6, 0xe10

    div-long v0, p1, v6

    const-string v6, "%02d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private initializeUI()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/RecordingTimerUI;->m_TimerBackground:Landroid/view/View;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/RecordingTimerUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/RecordingTimerUI;->m_TimerBackground:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/component/RecordingTimerUI;->m_TimerBackground:Landroid/view/View;

    const v1, 0x7f0800de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v0, p0, Lcom/android/camera/component/RecordingTimerUI;->m_TimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v0, p0, Lcom/android/camera/component/RecordingTimerUI;->m_TimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v1, 0x7f0800df

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/component/RecordingTimerUI;->m_TimerText:Landroid/widget/TextView;

    goto :goto_0
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 5

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/RecordingTimerUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/RecordingTimerUI$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/RecordingTimerUI$1;-><init>(Lcom/android/camera/component/RecordingTimerUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/RecordingTimerUI$2;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/RecordingTimerUI$2;-><init>(Lcom/android/camera/component/RecordingTimerUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/RecordingTimerUI$3;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v4, Lcom/android/camera/RecordingState;->Stopping:Lcom/android/camera/RecordingState;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/RecordingTimerUI$3;-><init>(Lcom/android/camera/component/RecordingTimerUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
