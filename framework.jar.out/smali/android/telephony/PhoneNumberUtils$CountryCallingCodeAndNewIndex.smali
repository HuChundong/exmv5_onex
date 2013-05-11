.class Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CountryCallingCodeAndNewIndex"
.end annotation


# instance fields
.field public final countryCallingCode:I

.field public final newIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "countryCode"
    .parameter "newIndex"

    .prologue
    .line 2560
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2561
    iput p1, p0, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    .line 2562
    iput p2, p0, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 2563
    return-void
.end method
