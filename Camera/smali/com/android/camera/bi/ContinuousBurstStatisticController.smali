.class public Lcom/android/camera/bi/ContinuousBurstStatisticController;
.super Lcom/android/camera/component/UIComponent;
.source "ContinuousBurstStatisticController.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "Continuous Burst snap Statistic Controller"


# instance fields
.field protected mContinuousHistory:Ljava/lang/StringBuffer;

.field private mPhoto_taken:I


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3

    const-string v0, "ContinuousBurstStaticController"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/bi/ContinuousBurstStatisticController;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController;->mPhoto_taken:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/bi/ContinuousBurstStatisticController;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController;->mPhoto_taken:I

    return p1
.end method

.method static synthetic access$008(Lcom/android/camera/bi/ContinuousBurstStatisticController;)I
    .locals 2

    iget v0, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController;->mPhoto_taken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController;->mPhoto_taken:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/bi/ContinuousBurstStatisticController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 5

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v3, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/camera/bi/ContinuousBurstStatisticController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v3

    const-string v4, "pref_bi_continuousburst_history"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    new-instance v2, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;-><init>(Lcom/android/camera/bi/ContinuousBurstStatisticController;Lcom/android/camera/HTCCamera;)V

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->mediaSavedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v3, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    new-instance v4, Lcom/android/camera/bi/ContinuousBurstStatisticController$2;

    invoke-direct {v4, p0, v0}, Lcom/android/camera/bi/ContinuousBurstStatisticController$2;-><init>(Lcom/android/camera/bi/ContinuousBurstStatisticController;Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    return-void
.end method
