//
//  Copyright (c) 2016 Google Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#import "FUIAuthStrings.h"

#import "FUIAuth.h"
#import "FUIAuthUtils.h"

// AuthUI string keys.
static NSString *const kAuthPickerTitle = @"AuthPickerTitle";
static NSString *const kSignInWithEmail = @"SignInWithEmail";
static NSString *const kEnterYourEmail = @"EnterYourEmail";
static NSString *const kInvalidEmailError = @"InvalidEmailError";
static NSString *const kInvalidPasswordError = @"InvalidPasswordError";
static NSString *const kCannotAuthenticateError = @"CannotAuthenticateError";
static NSString *const kExistingAccountTitle = @"ExistingAccountTitle";
static NSString *const kProviderUsedPreviouslyMessage = @"ProviderUsedPreviouslyMessage";
static NSString *const kSignInTitle = @"SignInTitle";
static NSString *const kEnterYourPassword = @"EnterYourPassword";
static NSString *const kWrongPasswordError = @"WrongPasswordError";
static NSString *const kSignInTooManyTimesError = @"SignInTooManyTimesError";
static NSString *const kUserNotFoundError = @"UserNotFoundError";
static NSString *const kAccountDisabledError = @"AccountDisabledError";
static NSString *const kPasswordRecoveryTitle = @"PasswordRecoveryTitle";
static NSString *const kPasswordRecoveryMessage = @"PasswordRecoveryMessage";
static NSString *const kPasswordRecoveryEmailSentTitle = @"PasswordRecoveryEmailSentTitle";
static NSString *const kPasswordRecoveryEmailSentMessage = @"PasswordRecoveryEmailSentMessage";
static NSString *const kSignUpTitle = @"SignUpTitle";
static NSString *const kFirstAndLastName = @"FirstAndLastName";
static NSString *const kChoosePassword = @"ChoosePassword";
static NSString *const kTermsOfServiceNotice = @"TermsOfServiceNotice";
static NSString *const kTermsOfService = @"TermsOfService";
static NSString *const kEmailAlreadyInUseError = @"EmailAlreadyInUseError";
static NSString *const kWeakPasswordError = @"WeakPasswordError";
static NSString *const kSignUpTooManyTimesError = @"SignUpTooManyTimesError";
static NSString *const kPasswordVerificationMessage = @"PasswordVerificationMessage";
static NSString *const kOK = @"OK";
static NSString *const kCancel = @"Cancel";
static NSString *const kBack = @"Back";
static NSString *const kNext = @"Next";
static NSString *const kSave = @"Save";
static NSString *const kSend = @"Send";
static NSString *const kEmail = @"Email";
static NSString *const kPassword = @"Password";
static NSString *const kName = @"Name";
static NSString *const kError = @"Error";
static NSString *const kClose = @"Close";
static NSString *const kASSectionTitleProfile = @"AS_SectionProfile";
static NSString *const kASSectionTitleSecurity = @"AS_SectionSecurity";
static NSString *const kASSectionTitleLinkedAccounts = @"AS_SectionLinkedAccounts";
static NSString *const kASCellName = @"AS_Name";
static NSString *const kASCellEmail = @"AS_Email";
static NSString *const kASCellAddPassword = @"AS_AddPassword";
static NSString *const kASCellChangePassword = @"AS_ChangePassword";
static NSString *const kASCellSignOut = @"AS_SignOut";
static NSString *const kASCellDeleteAccount = @"AS_DeleteAccount";

/** @var kKeyNotFound
    @brief The value returned if the key is not found in the table.
*/
static NSString *const kKeyNotFound = @"KeyNotFound";

/** @var kTableName
    @brief The name of the strings table to search for localized strings.
*/
static NSString *const kTableName = @"FirebaseAuthUI";

@implementation FUIAuthStrings

/** @fn localizedStringForKey:
    @brief Returns the localized text associated with a given string key. Will default to english
        text if the string is not available for the current localization.
    @param key A string key which identifies localized text in the .strings files.
    @return Localized value of the string identified by the key.
 */
+ (NSString *)localizedStringForKey:(nonnull NSString *)key {
  NSBundle *customStringsBundle = [FUIAuth defaultAuthUI].customStringsBundle;
  if (customStringsBundle) {
    NSString *localizedString = [customStringsBundle localizedStringForKey:key
                                                                     value:kKeyNotFound
                                                                     table:kTableName];
    if (![kKeyNotFound isEqual:localizedString]) {
      return localizedString;
    }
  }
  NSBundle *frameworkBundle = [FUIAuthUtils frameworkBundle];
  return [frameworkBundle localizedStringForKey:key value:nil table:kTableName];
}

+ (NSString *)authPickerTitle {
  return [self localizedStringForKey:kAuthPickerTitle];
}

+ (NSString *)signInWithEmail {
  return [self localizedStringForKey:kSignInWithEmail];
}

+ (NSString *)enterYourEmail {
  return [self localizedStringForKey:kEnterYourEmail];
}

+ (NSString *)invalidEmailError {
  return [self localizedStringForKey:kInvalidEmailError];
}

+ (NSString *)invalidPasswordError {
  return [self localizedStringForKey:kInvalidPasswordError];
}

+ (NSString *)cannotAuthenticateError {
  return [self localizedStringForKey:kCannotAuthenticateError];
}

+ (NSString *)existingAccountTitle {
  return [self localizedStringForKey:kExistingAccountTitle];
}

+ (NSString *)providerUsedPreviouslyMessage {
  return [self localizedStringForKey:kProviderUsedPreviouslyMessage];
}

+ (NSString *)signInTitle {
  return [self localizedStringForKey:kSignInTitle];
}

+ (NSString *)enterYourPassword {
  return [self localizedStringForKey:kEnterYourPassword];
}

+ (NSString *)wrongPasswordError {
  return [self localizedStringForKey:kWrongPasswordError];
}

+ (NSString *)signInTooManyTimesError {
  return [self localizedStringForKey:kSignInTooManyTimesError];
}

+ (NSString *)userNotFoundError {
  return [self localizedStringForKey:kUserNotFoundError];
}

+ (NSString *)accountDisabledError {
  return [self localizedStringForKey:kAccountDisabledError];
}

+ (NSString *)passwordRecoveryTitle {
  return [self localizedStringForKey:kPasswordRecoveryTitle];
}

+ (NSString *)passwordRecoveryMessage {
  return [self localizedStringForKey:kPasswordRecoveryMessage];
}

+ (NSString *)passwordRecoveryEmailSentTitle {
  return [self localizedStringForKey:kPasswordRecoveryEmailSentTitle];
}

+ (NSString *)passwordRecoveryEmailSentMessage {
  return [self localizedStringForKey:kPasswordRecoveryEmailSentMessage];
}

+ (NSString *)signUpTitle {
  return [self localizedStringForKey:kSignUpTitle];
}

+ (NSString *)firstAndLastName {
  return [self localizedStringForKey:kFirstAndLastName];
}

+ (NSString *)choosePassword {
  return [self localizedStringForKey:kChoosePassword];
}

+ (NSString *)termsOfServiceNotice {
  return [self localizedStringForKey:kTermsOfServiceNotice];
}

+ (NSString *)termsOfService {
  return [self localizedStringForKey:kTermsOfService];
}

+ (NSString *)emailAlreadyInUseError {
  return [self localizedStringForKey:kEmailAlreadyInUseError];
}

+ (NSString *)weakPasswordError {
  return [self localizedStringForKey:kWeakPasswordError];
}

+ (NSString *)signUpTooManyTimesError {
  return [self localizedStringForKey:kSignUpTooManyTimesError];
}

+ (NSString *)passwordVerificationMessage {
  return [self localizedStringForKey:kPasswordVerificationMessage];
}

+ (NSString *)OK {
  return [self localizedStringForKey:kOK];
}

+ (NSString *)cancel {
  return [self localizedStringForKey:kCancel];
}

+ (NSString *)back {
  return [self localizedStringForKey:kBack];
}

+ (NSString *)next {
  return [self localizedStringForKey:kNext];
}

+ (NSString *)save {
  return [self localizedStringForKey:kSave];
}

+ (NSString *)send {
  return [self localizedStringForKey:kSend];
}

+ (NSString *)email {
  return [self localizedStringForKey:kEmail];
}

+ (NSString *)password {
  return [self localizedStringForKey:kPassword];
}

+ (NSString *)name {
  return [self localizedStringForKey:kName];
}

+ (NSString *)error {
  return [self localizedStringForKey:kError];
}

+ (NSString *)close {
  return [self localizedStringForKey:kClose];
}

+ (NSString *)ASSectionTitleProfile {
  return [self localizedStringForKey:kASSectionTitleProfile];
}

+ (NSString *)ASSectionTitleSecurity {
  return [self localizedStringForKey:kASSectionTitleSecurity];
}

+ (NSString *)ASSectionTitleLinkedAccounts {
  return [self localizedStringForKey:kASSectionTitleLinkedAccounts];
}

+ (NSString *)ASCellName {
  return [self localizedStringForKey:kASCellName];
}

+ (NSString *)ASCellEmail {
  return [self localizedStringForKey:kASCellEmail];
}

+ (NSString *)ASCellAddPassword {
  return [self localizedStringForKey:kASCellAddPassword];
}

+ (NSString *)ASCellChangePassword {
  return [self localizedStringForKey:kASCellChangePassword];
}

+ (NSString *)ASCellSignOut {
  return [self localizedStringForKey:kASCellSignOut];
}

+ (NSString *)ASCellDeleteAccount {
  return [self localizedStringForKey:kASCellDeleteAccount];
}

@end