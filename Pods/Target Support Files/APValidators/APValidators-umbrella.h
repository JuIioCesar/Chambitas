#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "APBlockValidator.h"
#import "APCharactersCountValidator.h"
#import "APCompoundValidator.h"
#import "APCreditCardValidator.h"
#import "APEmailValidator.h"
#import "APEqualStringValidator.h"
#import "APRegexValidator.h"
#import "APRequiredValidator.h"
#import "APStringValidator.h"
#import "APValidator.h"
#import "APZipValidator.h"
#import "UITextField+APValidators.h"
#import "UITextView+APValidators.h"
#import "APValidator+SubclassesOnly.h"
#import "APCountryRegexProvider.h"
#import "NSPredicate+APValidators.h"

FOUNDATION_EXPORT double APValidatorsVersionNumber;
FOUNDATION_EXPORT const unsigned char APValidatorsVersionString[];

