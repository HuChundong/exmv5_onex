.class public final Landroid/nfc/NfcManager;
.super Ljava/lang/Object;
.source "NfcManager.java"


# instance fields
.field private mAdapter:Landroid/nfc/NfcAdapter;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/NfcManager;->mContext:Landroid/content/Context;

    .line 49
    iget-object v0, p0, Landroid/nfc/NfcManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context not associated with any application (using a mock context?)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public getDefaultAdapter()Landroid/nfc/NfcAdapter;
    .locals 2

    .prologue
    .line 61
    iget-object v1, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_0

    .line 63
    :try_start_0
    iget-object v1, p0, Landroid/nfc/NfcManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 64
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :try_start_1
    iput-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 66
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .end local v0           #adapter:Landroid/nfc/NfcAdapter;
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    return-object v1

    .line 66
    .restart local v0       #adapter:Landroid/nfc/NfcAdapter;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_0

    .line 67
    .end local v0           #adapter:Landroid/nfc/NfcAdapter;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setPollDuration(I)I
    .locals 1
    .parameter "pollDurationMs"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v0, 0x0

    return v0
.end method
