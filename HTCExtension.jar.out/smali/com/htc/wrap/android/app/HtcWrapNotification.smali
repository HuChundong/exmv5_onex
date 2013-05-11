.class public Lcom/htc/wrap/android/app/HtcWrapNotification;
.super Landroid/app/Notification;
.source "HtcWrapNotification.java"

# interfaces
.implements Landroid/app/HtcIfNotification;


# static fields
.field public static final CHARM_INCOMING_CALL:I = 0x6

.field public static final CHARM_MISSED_CALL:I = 0x7

.field public static final CHARM_OFF:I = 0x0

.field public static final FLAG_CALL_FORWARD_EVENT:I = 0x200000

.field public static final FLAG_DLNA_GALLERY_EVENT:I = 0x100000

.field public static final FLAG_DLNA_MUSIC_EVENT:I = 0x80000

.field public static final FLAG_HTCAPP:I = -0x80000000

.field public static final FLAG_MSG_FORWARD_EVENT:I = 0x400000

.field public static final FLAG_MUSIC_EVENT:I = 0x40000

.field public static final FLAG_ONTOP_EVENT:I = 0x20000

.field public static final FLAG_SHOW_CHARMS:I = 0x2000000

.field public static final FLAG_SHOW_JOGS:I = 0x10000

.field public static final FLAG_SOUND_ONLY_PREFERRED:I = 0x1000000

.field public static final JOG_BREATHING:I = 0x7

.field public static final JOG_OFF:I = 0x0

.field public static final JOG_SHORT_FLASH:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Notification;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;J)V
    .locals 0
    .parameter "icon"
    .parameter "tickerText"
    .parameter "when"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "icon"
    .parameter "tickerText"
    .parameter "when"
    .parameter "contentTitle"
    .parameter "contentText"
    .parameter "contentIntent"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p8}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "parcel"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/app/Notification;-><init>(Landroid/os/Parcel;)V

    .line 64
    return-void
.end method


# virtual methods
.method public getCharmMode()I
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Notification;->getCharmMode()I

    move-result v0

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/htc/wrap/android/app/HtcWrapNotification;->getHtcExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getHtcExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Notification;->getHtcExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getJogMode()I
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Notification;->getJogMode()I

    move-result v0

    return v0
.end method

.method public setCharmMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Notification;->setCharmMode(I)V

    .line 76
    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0
    .parameter "extras"

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/htc/wrap/android/app/HtcWrapNotification;->setHtcExtras(Landroid/os/Bundle;)V

    .line 92
    return-void
.end method

.method public setHtcExtras(Landroid/os/Bundle;)V
    .locals 0
    .parameter "extras"

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/app/Notification;->setHtcExtras(Landroid/os/Bundle;)V

    .line 103
    return-void
.end method

.method public setJogMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/Notification;->setJogMode(I)V

    .line 68
    return-void
.end method
