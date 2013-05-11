.class Lcom/android/camera/component/AudioManager$1;
.super Ljava/lang/Object;
.source "AudioManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/AudioManager;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AudioManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/AudioManager$1;->this$0:Lcom/android/camera/component/AudioManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, "AudioManager(Camera)"

    const-string v1, "Unknown audio focus change code"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_1
    const-string v0, "AudioManager(Camera)"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "AudioManager(Camera)"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "AudioManager(Camera)"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string v0, "AudioManager(Camera)"

    const-string v1, "AudioFocus: received AUDIOFOCUS_GAIN"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
