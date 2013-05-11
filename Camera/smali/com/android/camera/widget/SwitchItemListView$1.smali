.class Lcom/android/camera/widget/SwitchItemListView$1;
.super Ljava/lang/Object;
.source "SwitchItemListView.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/SwitchItemListView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/SwitchItemListView;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/SwitchItemListView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/SwitchItemListView$1;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/widget/SwitchItemListView$1;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    #getter for: Lcom/android/camera/widget/SwitchItemListView;->m_CameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/widget/SwitchItemListView;->access$000(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/widget/SwitchItemListView$1;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    #getter for: Lcom/android/camera/widget/SwitchItemListView;->m_CameraThread:Lcom/android/camera/CameraThread;
    invoke-static {v2}, Lcom/android/camera/widget/SwitchItemListView;->access$100(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/CameraThread;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/widget/SwitchItemListView$1;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    #getter for: Lcom/android/camera/widget/SwitchItemListView;->m_CameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/widget/SwitchItemListView;->access$000(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v2, v3, :cond_1

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    :goto_1
    iget-object v2, p0, Lcom/android/camera/widget/SwitchItemListView$1;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    #getter for: Lcom/android/camera/widget/SwitchItemListView;->m_CameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/widget/SwitchItemListView;->access$000(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraMode;)Z

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/widget/SwitchItemListView$1;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    #getter for: Lcom/android/camera/widget/SwitchItemListView;->m_CameraThread:Lcom/android/camera/CameraThread;
    invoke-static {v2}, Lcom/android/camera/widget/SwitchItemListView;->access$100(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/CameraThread;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/widget/SwitchItemListView$1;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    #getter for: Lcom/android/camera/widget/SwitchItemListView;->m_CameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/widget/SwitchItemListView;->access$000(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    if-ne v2, v3, :cond_2

    sget-object v0, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    :goto_2
    iget-object v2, p0, Lcom/android/camera/widget/SwitchItemListView$1;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    #getter for: Lcom/android/camera/widget/SwitchItemListView;->m_CameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/widget/SwitchItemListView;->access$000(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/HTCCamera;

    move-result-object v3

    iget-object v2, p0, Lcom/android/camera/widget/SwitchItemListView$1;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    #getter for: Lcom/android/camera/widget/SwitchItemListView;->m_CameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/widget/SwitchItemListView;->access$000(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraMode;

    invoke-virtual {v3, v0, v2}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraType;Lcom/android/camera/CameraMode;)Z

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
