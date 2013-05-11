.class Lcom/android/camera/HTCSnapbooth$8;
.super Ljava/lang/Object;
.source "HTCSnapbooth.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCSnapbooth;->setupUIElements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCSnapbooth;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCSnapbooth;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCSnapbooth$8;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$8;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mIsScreenSaveActivated:Z
    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$3700(Lcom/android/camera/HTCSnapbooth;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$8;->this$0:Lcom/android/camera/HTCSnapbooth;

    #calls: Lcom/android/camera/HTCSnapbooth;->exitScreenSave()V
    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$3800(Lcom/android/camera/HTCSnapbooth;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$8;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v0}, Lcom/android/camera/HTCSnapbooth;->restartScreenSaveTimer()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$8;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v1}, Lcom/android/camera/HTCSnapbooth;->restartScreenSaveTimer()V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$8;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v1}, Lcom/android/camera/HTCSnapbooth;->restartScreenSaveTimer()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
