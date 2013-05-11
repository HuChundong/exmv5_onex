.class Lcom/android/camera/component/RecordingTimerUI$1;
.super Ljava/lang/Object;
.source "RecordingTimerUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/RecordingTimerUI;->initializeOverride()V
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
.field final synthetic this$0:Lcom/android/camera/component/RecordingTimerUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/RecordingTimerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/RecordingTimerUI$1;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 6
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

    const-wide/16 v3, 0x0

    iget-object v2, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    cmp-long v2, v0, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/component/RecordingTimerUI$1;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    #calls: Lcom/android/camera/component/RecordingTimerUI;->initializeUI()V
    invoke-static {v2}, Lcom/android/camera/component/RecordingTimerUI;->access$000(Lcom/android/camera/component/RecordingTimerUI;)V

    iget-object v2, p0, Lcom/android/camera/component/RecordingTimerUI$1;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    #getter for: Lcom/android/camera/component/RecordingTimerUI;->m_TimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v2}, Lcom/android/camera/component/RecordingTimerUI;->access$100(Lcom/android/camera/component/RecordingTimerUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/component/RecordingTimerUI$1;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    invoke-virtual {v3}, Lcom/android/camera/component/RecordingTimerUI;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    iget-object v2, p0, Lcom/android/camera/component/RecordingTimerUI$1;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    #getter for: Lcom/android/camera/component/RecordingTimerUI;->m_TimerText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/camera/component/RecordingTimerUI;->access$200(Lcom/android/camera/component/RecordingTimerUI;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/camera/component/RecordingTimerUI$1;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    iget-object v3, p0, Lcom/android/camera/component/RecordingTimerUI$1;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    #getter for: Lcom/android/camera/component/RecordingTimerUI;->m_TimerBackground:Landroid/view/View;
    invoke-static {v3}, Lcom/android/camera/component/RecordingTimerUI;->access$300(Lcom/android/camera/component/RecordingTimerUI;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/component/RecordingTimerUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method
