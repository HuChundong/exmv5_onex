.class Lcom/android/camera/actionscreen/CommonActionScreen$14;
.super Ljava/lang/Object;
.source "CommonActionScreen.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actionscreen/CommonActionScreen;->onShareClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

.field final synthetic val$adapter:Lcom/android/camera/share/MediaShareListAdapter;

.field final synthetic val$bubble:Lcom/android/camera/widget/PopupBubble;

.field final synthetic val$cameraActivity:Lcom/android/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/actionscreen/CommonActionScreen;Lcom/android/camera/widget/PopupBubble;Lcom/android/camera/share/MediaShareListAdapter;Lcom/android/camera/HTCCamera;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/actionscreen/CommonActionScreen$14;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    iput-object p2, p0, Lcom/android/camera/actionscreen/CommonActionScreen$14;->val$bubble:Lcom/android/camera/widget/PopupBubble;

    iput-object p3, p0, Lcom/android/camera/actionscreen/CommonActionScreen$14;->val$adapter:Lcom/android/camera/share/MediaShareListAdapter;

    iput-object p4, p0, Lcom/android/camera/actionscreen/CommonActionScreen$14;->val$cameraActivity:Lcom/android/camera/HTCCamera;

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

    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen$14;->val$bubble:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v1}, Lcom/android/camera/widget/PopupBubble;->close()V

    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen$14;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    #calls: Lcom/android/camera/actionscreen/CommonActionScreen;->getSettings()Lcom/android/camera/CameraSettings;
    invoke-static {v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->access$1000(Lcom/android/camera/actionscreen/CommonActionScreen;)Lcom/android/camera/CameraSettings;

    move-result-object v1

    const-string v2, "pref_capture_last_share"

    iget-object v3, p0, Lcom/android/camera/actionscreen/CommonActionScreen$14;->val$adapter:Lcom/android/camera/share/MediaShareListAdapter;

    invoke-virtual {v3, p3}, Lcom/android/camera/share/MediaShareListAdapter;->getAppInfo(I)Lcom/android/camera/share/ExternalAppInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/share/ExternalAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen$14;->val$cameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v2, p0, Lcom/android/camera/actionscreen/CommonActionScreen$14;->val$adapter:Lcom/android/camera/share/MediaShareListAdapter;

    invoke-virtual {v2, p3}, Lcom/android/camera/share/MediaShareListAdapter;->createIntent(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen$14;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->access$1100(Lcom/android/camera/actionscreen/CommonActionScreen;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot start activity"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
