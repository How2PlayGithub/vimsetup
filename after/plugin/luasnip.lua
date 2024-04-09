local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node

ls.add_snippets("python", {
    s("quicksort", {
        t {
            "def sort(arr):",
            "    if len(arr) <= 1:",
            "        return arr",
            "    pivot = arr[len(arr) // 2]",
            "    left = [x for x in arr if x < pivot]",
            "    middle = [x for x in arr if x == pivot]",
            "    right = [x for x in arr if x > pivot]",
            "    return sort(left) + middle + sort(right)"
        }
    }),
    s("insertsort", {
        t {
            "def insertionSort(arr):",
            "    for i in range(1, len(arr)):",
            "        key = arr[i]",
            "        j = i - 1",
            "        while j >= 0 and key < arr[j]:",
            "            arr[j + 1] = arr[j]",
            "            j -= 1",
            "        arr[j + 1] = key"
        }
    }),
    s("mergesort", {
        t {
            "def mergeSort(arr):",
            "    if len(arr) > 1:",
            "        mid = len(arr) // 2",
            "        leftHalf = arr[:mid]",
            "        rightHalf = arr[mid:]",
            "",
            "        mergeSort(leftHalf)",
            "        mergeSort(rightHalf)",
            "",
            "        i = j = k = 0",
            "",
            "        while i < len(leftHalf) and j < len(rightHalf):",
            "            if leftHalf[i] < rightHalf[j]:",
            "                arr[k] = leftHalf[i]",
            "                i += 1",
            "            else:",
            "                arr[k] = rightHalf[j]",
            "                j += 1",
            "            k += 1",
            "",
            "        while i < len(leftHalf):",
            "            arr[k] = leftHalf[i]",
            "            i += 1",
            "            k += 1",
            "",
            "        while j < len(rightHalf):",
            "            arr[k] = rightHalf[j]",
            "            j += 1",
            "            k += 1"
        }
    }),
    s("binarysearch", {
        t {
            "def binarySearch(arr, target):",
            "    low = 0",
            "    high = len(arr) - 1",
            "",
            "    while low <= high:",
            "        mid = (low + high) // 2",
            "        if arr[mid] == target:",
            "            return mid",
            "        elif arr[mid] < target:",
            "            low = mid + 1",
            "        else:",
            "            high = mid - 1",
            "",
            "    return -1"
        }
    }),
    s("dfs", {
        t {
            "def dfsSearch(arr, target):",
            "    def dfs(low, high):",
            "        if low > high:",
            "            return -1",
            "        mid = (low + high) // 2",
            "        if arr[mid] == target:",
            "            return mid",
            "        elif arr[mid] < target:",
            "            return dfs(mid + 1, high)",
            "        else:",
            "            return dfs(low, mid - 1)",
            "",
            "    return dfs(0, len(arr) - 1)"
        }
    }),
    s("bfs", {
        t {
            "def bfsSearch(arr, target):",
            "    low = 0",
            "    high = len(arr) - 1",
            "",
            "    while low <= high:",
            "        mid = (low + high) // 2",
            "        if arr[mid] == target:",
            "            return mid",
            "        elif arr[mid] < target:",
            "            low = mid + 1",
            "        else:",
            "            high = mid - 1",
            "",
            "    return -1"
        }
    })
})

