.class Lcom/android/camera/widget/SwitchItemListView$4;
.super Ljava/lang/Object;
.source "SwitchItemListView.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/SwitchItemListView;->initialize()V
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
        "Lcom/android/camera/CameraType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/SwitchItemListView;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/SwitchItemListView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/SwitchItemListView$4;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/CameraType;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/CameraType;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/widget/SwitchItemListView$4;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    #calls: Lcom/android/camera/widget/SwitchItemListView;->updateStateForNewMode()V
    invoke-static {v0}, Lcom/android/camera/widget/SwitchItemListView;->access$200(Lcom/android/camera/widget/SwitchItemListView;)V

    iget-object v0, p0, Lcom/android/camera/widget/SwitchItemListView$4;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    #getter for: Lcom/android/camera/widget/SwitchItemListView;->mMenuAdapter:Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;
    invoke-static {v0}, Lcom/android/camera/widget/SwitchItemListView;->access$300(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/SwitchItemListView$4;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    #getter for: Lcom/android/camera/widget/SwitchItemListView;->mMenuAdapter:Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;
    invoke-static {v0}, Lcom/android/camera/widget/SwitchItemListView;->access$300(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
