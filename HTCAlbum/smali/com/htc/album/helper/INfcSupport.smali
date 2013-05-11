.class public interface abstract Lcom/htc/album/helper/INfcSupport;
.super Ljava/lang/Object;
.source "INfcSupport.java"


# static fields
.field public static final LAUNCH_ALBUM_MESSAGE:Landroid/nfc/NdefMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 12
    new-instance v0, Landroid/nfc/NdefMessage;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/nfc/NdefRecord;

    const/4 v2, 0x0

    const-string v3, "com.htc.album"

    invoke-static {v3}, Landroid/nfc/NdefRecord;->createApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    sput-object v0, Lcom/htc/album/helper/INfcSupport;->LAUNCH_ALBUM_MESSAGE:Landroid/nfc/NdefMessage;

    return-void
.end method


# virtual methods
.method public abstract disableNfcBeamPushUris(Landroid/app/Activity;)V
.end method

.method public abstract initNfcAdapter(Landroid/content/Context;)V
.end method

.method public abstract setNfcBeamPushUris(Landroid/app/Activity;)V
.end method

.method public abstract setNfcNdefPushMessage(Landroid/app/Activity;)V
.end method
