.class Landroid/nfc/NfcAdapter$1;
.super Landroid/nfc/NfcAdapter$CallNfcMethod;
.source "NfcAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/nfc/NfcAdapter;->helperCallNfc(Landroid/nfc/NfcAdapter$CallNfcHelper;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/nfc/NfcAdapter$CallNfcMethod",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/nfc/NfcAdapter;

.field final synthetic val$usage:Landroid/nfc/NfcAdapter$CallNfcHelper;


# direct methods
.method constructor <init>(Landroid/nfc/NfcAdapter;Landroid/nfc/NfcAdapter$CallNfcHelper;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Landroid/nfc/NfcAdapter$1;->this$0:Landroid/nfc/NfcAdapter;

    iput-object p2, p0, Landroid/nfc/NfcAdapter$1;->val$usage:Landroid/nfc/NfcAdapter$CallNfcHelper;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/nfc/NfcAdapter$CallNfcMethod;-><init>(Landroid/nfc/NfcAdapter;Landroid/nfc/NfcAdapter$1;)V

    return-void
.end method


# virtual methods
.method protected callMethod()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 576
    sget-object v0, Landroid/nfc/NfcAdapter$6;->$SwitchMap$android$nfc$NfcAdapter$CallNfcHelper:[I

    iget-object v1, p0, Landroid/nfc/NfcAdapter$1;->val$usage:Landroid/nfc/NfcAdapter$CallNfcHelper;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter$CallNfcHelper;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 603
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    .line 579
    :pswitch_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->enable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 581
    :pswitch_1
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/nfc/INfcAdapter;->disable(Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 583
    :pswitch_2
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->isReaderWriterEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 585
    :pswitch_3
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->isP2PEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 587
    :pswitch_4
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->isCardEmuEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 589
    :pswitch_5
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->enableReaderWriter()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 591
    :pswitch_6
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->disableReaderWriter()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 593
    :pswitch_7
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->enableP2P()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 595
    :pswitch_8
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->disableP2P()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 597
    :pswitch_9
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->enableNdefPush()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 599
    :pswitch_a
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->disableNdefPush()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 601
    :pswitch_b
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 576
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method protected bridge synthetic callMethod()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 573
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter$1;->callMethod()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
