.class Lcom/android/camera/component/SavingRecordingUI$1;
.super Ljava/lang/Object;
.source "SavingRecordingUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/SavingRecordingUI;->setupPropertyChangedCallbacks()V
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
        "Lcom/android/camera/RecordingState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/SavingRecordingUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/SavingRecordingUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/SavingRecordingUI$1;->this$0:Lcom/android/camera/component/SavingRecordingUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/RecordingState;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/RecordingState;",
            ">;)V"
        }
    .end annotation

    sget-object v1, Lcom/android/camera/component/SavingRecordingUI$2;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/RecordingState;

    invoke-virtual {v0}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/component/SavingRecordingUI$1;->this$0:Lcom/android/camera/component/SavingRecordingUI;

    #calls: Lcom/android/camera/component/SavingRecordingUI;->showSavingRecordingUI()V
    invoke-static {v0}, Lcom/android/camera/component/SavingRecordingUI;->access$000(Lcom/android/camera/component/SavingRecordingUI;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/component/SavingRecordingUI$1;->this$0:Lcom/android/camera/component/SavingRecordingUI;

    #calls: Lcom/android/camera/component/SavingRecordingUI;->hideSavingRecordingUI()V
    invoke-static {v0}, Lcom/android/camera/component/SavingRecordingUI;->access$100(Lcom/android/camera/component/SavingRecordingUI;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/component/SavingRecordingUI$1;->this$0:Lcom/android/camera/component/SavingRecordingUI;

    #calls: Lcom/android/camera/component/SavingRecordingUI;->hideSavingRecordingUI()V
    invoke-static {v0}, Lcom/android/camera/component/SavingRecordingUI;->access$100(Lcom/android/camera/component/SavingRecordingUI;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
