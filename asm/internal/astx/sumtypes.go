package astx

import "fmt"

// GlobalAttribute is a global attribute.
type GlobalAttribute interface {
	fmt.Stringer
	// IsGlobalAttribute ensures that only global attributes can be assigned to
	// the astx.GlobalAttribute interface.
	IsGlobalAttribute()
}
