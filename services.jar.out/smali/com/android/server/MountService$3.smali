.class Lcom/android/server/MountService$3;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 957
    iput-object p1, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    iput-object p2, p0, Lcom/android/server/MountService$3;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 962
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    iget-object v3, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/MountService;->access$2600(Lcom/android/server/MountService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "shared"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 964
    iget-object v2, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    iget-object v3, p0, Lcom/android/server/MountService$3;->val$path:Ljava/lang/String;

    const-string v4, "ums"

    const/4 v5, 0x1

    #calls: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 971
    :cond_0
    :goto_0
    return-void

    .line 965
    :cond_1
    iget-object v2, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    iget-object v3, p0, Lcom/android/server/MountService$3;->val$path:Ljava/lang/String;

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v1

    .local v1, rc:I
    if-eqz v1, :cond_0

    .line 966
    const-string v2, "MountService"

    const-string v3, "Insertion mount failed (%d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 968
    .end local v1           #rc:I
    :catch_0
    move-exception v0

    .line 969
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "MountService"

    const-string v3, "Failed to mount media on insertion"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
