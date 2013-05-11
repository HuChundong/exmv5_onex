.class Lcom/android/server/PowerManagerService$HtcCpuPerfLevelWakeLock;
.super Lcom/android/server/PowerManagerService$WakeLock;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HtcCpuPerfLevelWakeLock"
.end annotation


# instance fields
.field private mLevel:I

.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;ILandroid/os/IBinder;Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter "f"
    .parameter "b"
    .parameter "t"
    .parameter "u"
    .parameter "p"
    .parameter "level"

    .prologue
    .line 1132
    iput-object p1, p0, Lcom/android/server/PowerManagerService$HtcCpuPerfLevelWakeLock;->this$0:Lcom/android/server/PowerManagerService;

    .line 1133
    invoke-direct/range {p0 .. p6}, Lcom/android/server/PowerManagerService$WakeLock;-><init>(Lcom/android/server/PowerManagerService;ILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 1134
    iput p7, p0, Lcom/android/server/PowerManagerService$HtcCpuPerfLevelWakeLock;->mLevel:I

    .line 1135
    return-void
.end method


# virtual methods
.method public cpuFreqLevelToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1138
    iget v0, p0, Lcom/android/server/PowerManagerService$HtcCpuPerfLevelWakeLock;->mLevel:I

    packed-switch v0, :pswitch_data_0

    .line 1152
    const-string v0, "Unknown cpu freq level"

    :goto_0
    return-object v0

    .line 1140
    :pswitch_0
    const-string v0, "CPU_FREQ_LOWEST"

    goto :goto_0

    .line 1142
    :pswitch_1
    const-string v0, "CPU_FREQ_LOW"

    goto :goto_0

    .line 1144
    :pswitch_2
    const-string v0, "CPU_FREQ_MEDIUM"

    goto :goto_0

    .line 1146
    :pswitch_3
    const-string v0, "CPU_FREQ_HIGH"

    goto :goto_0

    .line 1148
    :pswitch_4
    const-string v0, "CPU_FREQ_HIGHEST"

    goto :goto_0

    .line 1138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public cpuNumLevelToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1156
    iget v0, p0, Lcom/android/server/PowerManagerService$HtcCpuPerfLevelWakeLock;->mLevel:I

    packed-switch v0, :pswitch_data_0

    .line 1168
    const-string v0, "Unknown cpu number level"

    :goto_0
    return-object v0

    .line 1158
    :pswitch_0
    const-string v0, "CPU_NUM_SINGLE"

    goto :goto_0

    .line 1160
    :pswitch_1
    const-string v0, "CPU_NUM_DUAL"

    goto :goto_0

    .line 1162
    :pswitch_2
    const-string v0, "CPU_NUM_TRIPLE"

    goto :goto_0

    .line 1164
    :pswitch_3
    const-string v0, "CPU_NUM_QUAD"

    goto :goto_0

    .line 1156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 1172
    iget v0, p0, Lcom/android/server/PowerManagerService$HtcCpuPerfLevelWakeLock;->mLevel:I

    return v0
.end method
