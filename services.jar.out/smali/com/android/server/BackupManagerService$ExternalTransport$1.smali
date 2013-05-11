.class Lcom/android/server/BackupManagerService$ExternalTransport$1;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BackupManagerService$ExternalTransport;-><init>(Lcom/android/server/BackupManagerService;Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BackupManagerService$ExternalTransport;

.field final synthetic val$this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService$ExternalTransport;Lcom/android/server/BackupManagerService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6037
    iput-object p1, p0, Lcom/android/server/BackupManagerService$ExternalTransport$1;->this$1:Lcom/android/server/BackupManagerService$ExternalTransport;

    iput-object p2, p0, Lcom/android/server/BackupManagerService$ExternalTransport$1;->val$this$0:Lcom/android/server/BackupManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 6039
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ExternalTransport$1;->this$1:Lcom/android/server/BackupManagerService$ExternalTransport;

    invoke-static {p2}, Lcom/android/internal/backup/IBackupTransport$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/BackupManagerService$ExternalTransport;->externaltransport:Lcom/android/internal/backup/IBackupTransport;

    .line 6040
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected to new transport, registerTransport("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BackupManagerService$ExternalTransport$1;->this$1:Lcom/android/server/BackupManagerService$ExternalTransport;

    iget-object v3, v3, Lcom/android/server/BackupManagerService$ExternalTransport;->externaltransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6042
    :cond_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ExternalTransport$1;->this$1:Lcom/android/server/BackupManagerService$ExternalTransport;

    iget-object v1, v1, Lcom/android/server/BackupManagerService$ExternalTransport;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BackupManagerService$ExternalTransport$1;->this$1:Lcom/android/server/BackupManagerService$ExternalTransport;

    iget-object v3, v3, Lcom/android/server/BackupManagerService$ExternalTransport;->externaltransport:Lcom/android/internal/backup/IBackupTransport;

    #calls: Lcom/android/server/BackupManagerService;->registerTransport(Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V

    .line 6044
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ExternalTransport$1;->this$1:Lcom/android/server/BackupManagerService$ExternalTransport;

    iget-object v1, v1, Lcom/android/server/BackupManagerService$ExternalTransport;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mExternalTransports:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/BackupManagerService$ExternalTransport$1;->this$1:Lcom/android/server/BackupManagerService$ExternalTransport;

    iget-object v2, v2, Lcom/android/server/BackupManagerService$ExternalTransport;->externaltransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6048
    :goto_0
    return-void

    .line 6045
    :catch_0
    move-exception v0

    .line 6046
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "RemoteException when get transportDirName"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 6051
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnected from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BackupManagerService$ExternalTransport$1;->this$1:Lcom/android/server/BackupManagerService$ExternalTransport;

    iget-object v3, v3, Lcom/android/server/BackupManagerService$ExternalTransport;->transportComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " transport"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6053
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ExternalTransport$1;->this$1:Lcom/android/server/BackupManagerService$ExternalTransport;

    iget-object v1, v1, Lcom/android/server/BackupManagerService$ExternalTransport;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mExternalTransports:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/BackupManagerService$ExternalTransport$1;->this$1:Lcom/android/server/BackupManagerService$ExternalTransport;

    iget-object v2, v2, Lcom/android/server/BackupManagerService$ExternalTransport;->externaltransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6057
    :goto_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ExternalTransport$1;->this$1:Lcom/android/server/BackupManagerService$ExternalTransport;

    iput-object v4, v1, Lcom/android/server/BackupManagerService$ExternalTransport;->externaltransport:Lcom/android/internal/backup/IBackupTransport;

    .line 6058
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ExternalTransport$1;->this$1:Lcom/android/server/BackupManagerService$ExternalTransport;

    iget-object v1, v1, Lcom/android/server/BackupManagerService$ExternalTransport;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/BackupManagerService$ExternalTransport$1;->this$1:Lcom/android/server/BackupManagerService$ExternalTransport;

    iget-object v2, v2, Lcom/android/server/BackupManagerService$ExternalTransport;->transportComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/BackupManagerService;->registerTransport(Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V
    invoke-static {v1, v2, v4}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V

    .line 6059
    return-void

    .line 6054
    :catch_0
    move-exception v0

    .line 6055
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "RemoteException when get transportDirName"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
