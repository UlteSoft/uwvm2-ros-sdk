/**
 * @file config_common.h
 * @brief Preserve the genuine CPython 3.14.8 implementation.
 * @details Original Python Software Foundation license and algorithms are retained.
 * This reviewed SDK tree adds English file contracts and Allman formatting.
 */

static inline int _config_dict_get(PyObject* dict, const char* name, PyObject** p_item)
{
    PyObject* item;
    if (PyDict_GetItemStringRef(dict, name, &item) < 0)
    {
        return -1;
    }
    if (item == NULL)
    {
        // We do not set an exception.
        return -1;
    }
    *p_item = item;
    return 0;
}

static PyObject* config_dict_get(PyObject* dict, const char* name)
{
    PyObject* item;
    if (_config_dict_get(dict, name, &item) < 0)
    {
        if (!PyErr_Occurred())
        {
            PyErr_Format(PyExc_ValueError, "missing config key: %s", name);
        }
        return NULL;
    }
    return item;
}

static void config_dict_invalid_type(const char* name)
{
    PyErr_Format(PyExc_TypeError, "invalid config type: %s", name);
}
