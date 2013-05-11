.class Lcom/android/server/BackupManagerService$ExternalTransport;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExternalTransport"
.end annotation


# instance fields
.field externalconnection:Landroid/content/ServiceConnection;

.field externaltransport:Lcom/android/internal/backup/IBackupTransport;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;

.field transportComponentName:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Landroid/content/ComponentName;)V
    .locals 1
    .parameter
    .parameter "name"

    .prologue
    .line 6035
    iput-object p1, p0, Lcom/android/server/BackupManagerService$ExternalTransport;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6036
    iput-object p2, p0, Lcom/android/server/BackupManagerService$ExternalTransport;->transportComponentName:Landroid/content/ComponentName;

    .line 6037
    new-instance v0, Lcom/android/server/BackupManagerService$ExternalTransport$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/BackupManagerService$ExternalTransport$1;-><init>(Lcom/android/server/BackupManagerService$ExternalTransport;Lcom/android/server/BackupManagerService;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$ExternalTransport;->externalconnection:Landroid/content/ServiceConnection;

    .line 6061
    return-void
.end method
