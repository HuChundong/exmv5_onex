.class Lcom/android/internal/telephony/cat/LanguageNotificationParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field lang:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/lang/String;)V
    .locals 0
    .parameter "cmdDet"
    .parameter "lang"

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 257
    iput-object p2, p0, Lcom/android/internal/telephony/cat/LanguageNotificationParams;->lang:Ljava/lang/String;

    .line 258
    return-void
.end method
