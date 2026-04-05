#ifndef DISABLED_ALLOC_HPP
#define DISABLED_ALLOC_HPP

// Custom allocator that does not initialize elements
template <typename T>
class Alloc {
public:
    using value_type = T;

  	// Allocate sufficient memory
    T* allocate(size_t n) {
        return static_cast<T*>(::operator new(n * sizeof(T)));
    }

    void deallocate(T* p, size_t n) noexcept {
        // ::operator delete(p, sizeof(T) * n);
    }

    // Override construct to skip initialization
    template <typename U, typename... Args>
    void construct(U* p, Args&&...) noexcept {

        // No initialization occurs
    }
    template <typename U>
    void destroy(U* p) noexcept {
        p->~U();
    }
};

#endif
