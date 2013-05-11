.class Lcom/android/camera/component/CaptureBar$11;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/CaptureBar;->setupPropertyChangedCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/property/PropertyChangedCallback",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/CaptureBar;


# direct methods
.method constructor <init>(Lcom/android/camera/component/CaptureBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/CaptureBar$11;->this$0:Lcom/android/camera/component/CaptureBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v9, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    if-gez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v9, p0, Lcom/android/camera/component/CaptureBar$11;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->isVideoButtonPressed:Lcom/android/camera/property/Property;
    invoke-static {v9}, Lcom/android/camera/component/CaptureBar;->access$200(Lcom/android/camera/component/CaptureBar;)Lcom/android/camera/property/Property;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/camera/component/CaptureBar$11;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->m_RecordingButtonIcons:[Landroid/graphics/drawable/Drawable;
    invoke-static {v9}, Lcom/android/camera/component/CaptureBar;->access$2200(Lcom/android/camera/component/CaptureBar;)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v9, p0, Lcom/android/camera/component/CaptureBar$11;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/android/camera/component/CaptureBar;->access$2300(Lcom/android/camera/component/CaptureBar;)Landroid/widget/ImageView;

    move-result-object v9

    array-length v10, v1

    int-to-long v10, v10

    rem-long v10, v6, v10

    long-to-int v10, v10

    aget-object v10, v1, v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/camera/component/CaptureBar$11;->this$0:Lcom/android/camera/component/CaptureBar;

    #calls: Lcom/android/camera/component/CaptureBar;->isSlowMotionMode()Z
    invoke-static {v9}, Lcom/android/camera/component/CaptureBar;->access$2000(Lcom/android/camera/component/CaptureBar;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/camera/component/CaptureBar$11;->this$0:Lcom/android/camera/component/CaptureBar;

    const/4 v10, 0x1

    #calls: Lcom/android/camera/component/CaptureBar;->showSlowMotionIndicator(Z)V
    invoke-static {v9, v10}, Lcom/android/camera/component/CaptureBar;->access$2100(Lcom/android/camera/component/CaptureBar;Z)V

    iget-object v9, p0, Lcom/android/camera/component/CaptureBar$11;->this$0:Lcom/android/camera/component/CaptureBar;

    const/4 v10, 0x1

    #calls: Lcom/android/camera/component/CaptureBar;->showSlowMotionIcon(Z)V
    invoke-static {v9, v10}, Lcom/android/camera/component/CaptureBar;->access$2400(Lcom/android/camera/component/CaptureBar;Z)V

    :cond_2
    iget-object v9, p0, Lcom/android/camera/component/CaptureBar$11;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->m_RecordingTimerTextViewPortrait:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/camera/component/CaptureBar;->access$2500(Lcom/android/camera/component/CaptureBar;)Landroid/widget/TextView;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/camera/component/CaptureBar$11;->this$0:Lcom/android/camera/component/CaptureBar;

    invoke-virtual {v9}, Lcom/android/camera/component/CaptureBar;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/camera/component/CaptureBar$11;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->m_RecordingTimerTextViewPortrait:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/camera/component/CaptureBar;->access$2500(Lcom/android/camera/component/CaptureBar;)Landroid/widget/TextView;

    move-result-object v8

    :goto_1
    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/android/camera/component/CaptureBar$11;->this$0:Lcom/android/camera/component/CaptureBar;

    const v10, 0x7f090013

    invoke-virtual {v9, v10}, Lcom/android/camera/component/CaptureBar;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v9, p0, Lcom/android/camera/component/CaptureBar$11;->this$0:Lcom/android/camera/component/CaptureBar;

    const/4 v10, 0x1

    #calls: Lcom/android/camera/component/CaptureBar;->showRecordingTimer(Z)V
    invoke-static {v9, v10}, Lcom/android/camera/component/CaptureBar;->access$2700(Lcom/android/camera/component/CaptureBar;Z)V

    :cond_3
    iget-object v9, p0, Lcom/android/camera/component/CaptureBar$11;->this$0:Lcom/android/camera/component/CaptureBar;

    const-class v10, Lcom/android/camera/ICaptureResolutionManager;

    invoke-virtual {v9, v10}, Lcom/android/camera/component/CaptureBar;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ICaptureResolutionManager;

    if-eqz v5, :cond_8

    iget-object v9, v5, Lcom/android/camera/ICaptureResolutionManager;->maxVideoDuration:Lcom/android/camera/property/Property;

    invoke-virtual {v9}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/Duration;

    move-object v2, v9

    :goto_2
    invoke-virtual {v2}, Lcom/android/camera/Duration;->isInfinite()Z

    move-result v9

    if-nez v9, :cond_9

    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_a

    move-wide v3, v6

    :goto_4
    iget-object v9, p0, Lcom/android/camera/component/CaptureBar$11;->this$0:Lcom/android/camera/component/CaptureBar;

    #calls: Lcom/android/camera/component/CaptureBar;->isSlowMotionMode()Z
    invoke-static {v9}, Lcom/android/camera/component/CaptureBar;->access$2000(Lcom/android/camera/component/CaptureBar;)Z

    move-result v9

    if-eqz v9, :cond_5

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v10, 0xdf

    if-eq v9, v10, :cond_4

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v10, 0xe2

    if-eq v9, v10, :cond_4

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v10, 0xe5

    if-ne v9, v10, :cond_b

    :cond_4
    long-to-float v9, v3

    const/high16 v10, 0x4000

    mul-float/2addr v9, v10

    float-to-long v3, v9

    :cond_5
    :goto_5
    if-eqz v0, :cond_6

    const-wide/16 v9, 0xa

    cmp-long v9, v3, v9

    if-gtz v9, :cond_6

    const/high16 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    iget-object v9, p0, Lcom/android/camera/component/CaptureBar$11;->this$0:Lcom/android/camera/component/CaptureBar;

    #calls: Lcom/android/camera/component/CaptureBar;->getRecordingTimeString(J)Ljava/lang/String;
    invoke-static {v9, v3, v4}, Lcom/android/camera/component/CaptureBar;->access$2800(Lcom/android/camera/component/CaptureBar;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    iget-object v9, p0, Lcom/android/camera/component/CaptureBar$11;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->m_RecordingTimerTextViewLandscape:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/camera/component/CaptureBar;->access$2600(Lcom/android/camera/component/CaptureBar;)Landroid/widget/TextView;

    move-result-object v8

    goto :goto_1

    :cond_8
    sget-object v2, Lcom/android/camera/Duration;->INFINITE:Lcom/android/camera/Duration;

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    invoke-virtual {v2}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v9

    sub-long v3, v9, v6

    goto :goto_4

    :cond_b
    long-to-float v9, v3

    const/high16 v10, 0x4080

    mul-float/2addr v9, v10

    float-to-long v3, v9

    goto :goto_5
.end method
